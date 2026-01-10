program mandelbrot_bench
    use omp_lib
    implicit none

    integer, parameter :: width = 4000
    integer, parameter :: height = 4000
    integer, parameter :: max_iter = 1000

    real(8), parameter :: x_min = -2.0d0, x_max = 1.0d0
    real(8), parameter :: y_min = -1.5d0, y_max = 1.5d0

    integer, allocatable :: pixels(:,:)
    real(8) :: start_time, end_time, elapsed_ms, mpixels_per_sec
    integer :: x, y, iter, unit_num
    real(8) :: c_re, c_im
    integer :: color

    allocate(pixels(width, height))

    ! Warm-up
    !$omp parallel do private(x, c_re, c_im) schedule(dynamic, 1)
    do y = 1, height / 10
        c_im = y_min + (dble(y-1) / dble(height)) * (y_max - y_min)
        do x = 1, width
            c_re = x_min + (dble(x-1) / dble(width)) * (x_max - x_min)
            iter = mandelbrot_iter(c_re, c_im)
        end do
    end do
    !$omp end parallel do

    start_time = omp_get_wtime()

    ! Main computation
    !$omp parallel do private(x, c_re, c_im, iter) schedule(dynamic, 1)
    do y = 1, height
        c_im = y_min + (dble(y-1) / dble(height)) * (y_max - y_min)
        do x = 1, width
            c_re = x_min + (dble(x-1) / dble(width)) * (x_max - x_min)
            pixels(x, y) = mandelbrot_iter(c_re, c_im)
        end do
    end do
    !$omp end parallel do

    end_time = omp_get_wtime()
    elapsed_ms = (end_time - start_time) * 1000.0d0
    mpixels_per_sec = dble(width * height) / (elapsed_ms * 1000.0d0)

    ! Write PPM file
    open(newunit=unit_num, file='mandelbrot.ppm', status='replace', action='write')
    write(unit_num, '(A)') 'P3'
    write(unit_num, '(I0,A,I0)') width, ' ', height
    write(unit_num, '(A)') '255'

    do y = 1, height
        do x = 1, width
            iter = pixels(x, y)
            if (iter == max_iter) then
                write(unit_num, '(A)', advance='no') '0 0 0 '
            else
                color = mod(iter, 256)
                write(unit_num, '(I0,A,I0,A)', advance='no') color, ' ', color, ' 255 '
            end if
        end do
        write(unit_num, *)
    end do
    close(unit_num)

    write(*, '(A,F0.3,A,F0.3)') 'elapsed_ms=', elapsed_ms, ' mpixels_per_sec=', mpixels_per_sec

    deallocate(pixels)

contains

    function mandelbrot_iter(c_re, c_im) result(iter)
        real(8), intent(in) :: c_re, c_im
        integer :: iter
        real(8) :: z_re, z_im, z_re2, z_im2, new_z_im

        z_re = 0.0d0
        z_im = 0.0d0

        do iter = 0, max_iter - 1
            z_re2 = z_re * z_re
            z_im2 = z_im * z_im
            if (z_re2 + z_im2 > 4.0d0) return
            new_z_im = 2.0d0 * z_re * z_im + c_im
            z_re = z_re2 - z_im2 + c_re
            z_im = new_z_im
        end do
        iter = max_iter
    end function mandelbrot_iter

end program mandelbrot_bench
