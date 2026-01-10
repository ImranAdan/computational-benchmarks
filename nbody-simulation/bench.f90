program nbody
    implicit none

    integer, parameter :: n = 1500
    integer, parameter :: steps_warmup = 5
    integer, parameter :: steps = 400
    real(8), parameter :: dt = 0.01d0
    real(8), parameter :: softening = 1.0d-9

    real(8), allocatable :: x(:), y(:), z(:)
    real(8), allocatable :: vx(:), vy(:), vz(:)
    real(8), allocatable :: m(:)
    real(8), allocatable :: fx_buf(:), fy_buf(:), fz_buf(:)

    integer(8) :: seed
    real(8) :: checksum, elapsed_ms
    integer(8) :: count_rate, t1, t2
    integer :: i

    ! Allocate arrays
    allocate(x(n), y(n), z(n))
    allocate(vx(n), vy(n), vz(n))
    allocate(m(n))
    allocate(fx_buf(n), fy_buf(n), fz_buf(n))

    ! Initialize with LCG
    seed = 1
    do i = 1, n
        x(i) = lcg_double(seed)
        y(i) = lcg_double(seed)
        z(i) = lcg_double(seed)
        vx(i) = lcg_double(seed) * 0.1d0
        vy(i) = lcg_double(seed) * 0.1d0
        vz(i) = lcg_double(seed) * 0.1d0
        m(i) = abs(lcg_double(seed)) + 0.5d0
    end do

    ! Warm-up
    call run_steps(steps_warmup, x, y, z, vx, vy, vz, m, fx_buf, fy_buf, fz_buf)

    ! Timed run
    call system_clock(t1, count_rate)
    call run_steps(steps, x, y, z, vx, vy, vz, m, fx_buf, fy_buf, fz_buf)
    call system_clock(t2)

    elapsed_ms = dble(t2 - t1) / dble(count_rate) * 1000.0d0

    ! Compute checksum
    checksum = 0.0d0
    do i = 1, n
        checksum = checksum + x(i) + y(i) + z(i) + vx(i) + vy(i) + vz(i)
    end do

    write(*, '(A,F0.3,A,F0.6)') 'elapsed_ms=', elapsed_ms, ' checksum=', checksum

    ! Deallocate
    deallocate(x, y, z, vx, vy, vz, m, fx_buf, fy_buf, fz_buf)

contains

    function lcg_double(state) result(val)
        integer(8), intent(inout) :: state
        real(8) :: val
        integer(8) :: shifted
        integer(8), parameter :: mult = int(Z'5851F42D4C957F2D', 8)

        ! state = state * mult + 1 (with wraparound)
        state = state * mult + 1_8
        
        ! Logical shift right by 11
        shifted = ishft(state, -11)
        ! Ensure high bits are zero (already true for logical shift, but being explicit)
        shifted = iand(shifted, int(Z'1FFFFFFFFFFFFF', 8))

        val = dble(shifted) * (1.0d0 / 9007199254740992.0d0) * 2.0d0 - 1.0d0
    end function lcg_double

    subroutine run_steps(count, x, y, z, vx, vy, vz, m, fx_buf, fy_buf, fz_buf)
        integer, intent(in) :: count
        real(8), intent(inout) :: x(:), y(:), z(:)
        real(8), intent(inout) :: vx(:), vy(:), vz(:)
        real(8), intent(in) :: m(:)
        real(8), intent(inout) :: fx_buf(:), fy_buf(:), fz_buf(:)

        integer :: step, i, j
        real(8) :: xi, yi, zi, fxi, fyi, fzi, mi
        real(8) :: dx, dy, dz, dist2, inv, inv3, s_i, s_j

        do step = 1, count
            ! Zero out force buffers
            fx_buf = 0.0d0
            fy_buf = 0.0d0
            fz_buf = 0.0d0

            do i = 1, n
                xi = x(i)
                yi = y(i)
                zi = z(i)
                fxi = fx_buf(i)
                fyi = fy_buf(i)
                fzi = fz_buf(i)
                mi = m(i)

                do j = i + 1, n
                    dx = x(j) - xi
                    dy = y(j) - yi
                    dz = z(j) - zi
                    dist2 = dx * dx + dy * dy + dz * dz + softening
                    inv = 1.0d0 / sqrt(dist2)
                    inv3 = inv * inv * inv

                    s_i = m(j) * inv3
                    s_j = mi * inv3

                    fxi = fxi + dx * s_i
                    fyi = fyi + dy * s_i
                    fzi = fzi + dz * s_i

                    fx_buf(j) = fx_buf(j) - dx * s_j
                    fy_buf(j) = fy_buf(j) - dy * s_j
                    fz_buf(j) = fz_buf(j) - dz * s_j
                end do

                fx_buf(i) = fxi
                fy_buf(i) = fyi
                fz_buf(i) = fzi
            end do

            ! Update velocities
            do i = 1, n
                vx(i) = vx(i) + dt * fx_buf(i)
                vy(i) = vy(i) + dt * fy_buf(i)
                vz(i) = vz(i) + dt * fz_buf(i)
            end do

            ! Update positions
            do i = 1, n
                x(i) = x(i) + dt * vx(i)
                y(i) = y(i) + dt * vy(i)
                z(i) = z(i) + dt * vz(i)
            end do
        end do
    end subroutine run_steps

end program nbody