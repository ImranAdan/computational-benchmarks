program vertex_transform
    implicit none

    integer, parameter :: num_vertices = 250000
    integer, parameter :: num_frames = 100

    real(8), allocatable :: vx(:), vy(:), vz(:)
    real(8) :: pi, sqrt5, phi, y, radius
    real(8) :: angle, cos_a, sin_a, x1, z1, y2, z2, factor
    real(8) :: px, py, checksum
    real(8) :: start_time, end_time, elapsed_ms, vertices_per_sec
    real(8), parameter :: viewer_distance = 5.0d0
    real(8), parameter :: scale = 1000.0d0

    integer :: i, frame

    allocate(vx(num_vertices), vy(num_vertices), vz(num_vertices))

    pi = 3.14159265358979323846d0
    sqrt5 = sqrt(5.0d0)

    ! Initialize vertices on a sphere (Fibonacci lattice)
    do i = 1, num_vertices
        phi = dble(i - 1) * pi * (3.0d0 - sqrt5)
        y = 1.0d0 - (dble(i - 1) / dble(num_vertices - 1)) * 2.0d0
        radius = sqrt(1.0d0 - y * y)
        vx(i) = radius * cos(phi)
        vy(i) = y
        vz(i) = radius * sin(phi)
    end do

    print *, 'Starting Live 3D Calculation Session...'

    ! Warm-up
    do frame = 0, 9
        angle = dble(frame) * 0.01d0
        do i = 1, num_vertices
            call rotate_and_project(vx(i), vy(i), vz(i), angle, px, py)
        end do
    end do

    call cpu_time(start_time)
    checksum = 0.0d0

    do frame = 0, num_frames - 1
        angle = dble(frame) * 0.01d0
        do i = 1, num_vertices
            call rotate_and_project(vx(i), vy(i), vz(i), angle, px, py)
            checksum = checksum + px + py
        end do

        if (mod(frame, 20) == 0) then
            call rotate_and_project(vx(1), vy(1), vz(1), angle, px, py)
            write(*, '(A,I3,A,F0.2,A,F0.2)') '[LIVE FRAME ', frame, '] Tracking Vertex 0: x=', px, ', y=', py
        end if
    end do

    call cpu_time(end_time)
    elapsed_ms = (end_time - start_time) * 1000.0d0
    vertices_per_sec = dble(num_vertices) * dble(num_frames) / (elapsed_ms / 1000.0d0)

    print *, '------------------------------------------------'
    write(*, '(A,F0.3,A,F0.0,A,F0.6)') 'elapsed_ms=', elapsed_ms, ' vertices_per_sec=', vertices_per_sec, ' checksum=', checksum

    deallocate(vx, vy, vz)

contains

    subroutine rotate_and_project(x, y, z, angle, out_x, out_y)
        real(8), intent(in) :: x, y, z, angle
        real(8), intent(out) :: out_x, out_y
        real(8) :: cos_a, sin_a, x1, z1, y2, z2, factor

        cos_a = cos(angle)
        sin_a = sin(angle)

        x1 = x * cos_a + z * sin_a
        z1 = -x * sin_a + z * cos_a

        y2 = y * cos_a - z1 * sin_a
        z2 = y * sin_a + z1 * cos_a

        factor = scale / (z2 + viewer_distance)
        out_x = x1 * factor
        out_y = y2 * factor
    end subroutine

end program vertex_transform
