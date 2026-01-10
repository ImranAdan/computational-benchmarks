program sha256_bench
    implicit none

    integer, parameter :: num_hashes = 1000000
    character(len=*), parameter :: base_message = "Computational Benchmarks - Language Performance Lab"

    integer(4) :: state(8)
    integer(1) :: data_buf(64)
    integer(4) :: datalen
    integer(8) :: bitlen
    integer(1) :: final_hash(32)
    integer(1) :: nonce_bytes(4)

    real(8) :: start_time, end_time, elapsed_ms, hashes_per_sec
    integer(4) :: nonce, i

    call cpu_time(start_time)

    do nonce = 0, num_hashes - 1
        call sha256_init(state, datalen, bitlen)
        call sha256_update(state, data_buf, datalen, bitlen, &
                          transfer(base_message, nonce_bytes, len(base_message)), len(base_message))

        nonce_bytes(1) = int(ibits(nonce, 24, 8), 1)
        nonce_bytes(2) = int(ibits(nonce, 16, 8), 1)
        nonce_bytes(3) = int(ibits(nonce, 8, 8), 1)
        nonce_bytes(4) = int(iand(nonce, 255), 1)

        call sha256_update(state, data_buf, datalen, bitlen, nonce_bytes, 4)
        call sha256_final(state, data_buf, datalen, bitlen, final_hash)
    end do

    call cpu_time(end_time)
    elapsed_ms = (end_time - start_time) * 1000.0d0
    hashes_per_sec = dble(num_hashes) / (elapsed_ms / 1000.0d0)

    write(*, '(A,F0.3,A,F0.0,A)', advance='no') 'elapsed_ms=', elapsed_ms, ' hashes_per_sec=', hashes_per_sec, ' checksum='
    do i = 1, 32
        write(*, '(Z2.2)', advance='no') iand(int(final_hash(i), 4), 255)
    end do
    write(*, *)

contains

    subroutine sha256_init(state, datalen, bitlen)
        integer(4), intent(out) :: state(8)
        integer(4), intent(out) :: datalen
        integer(8), intent(out) :: bitlen

        state(1) = int(Z'6a09e667', 4)
        state(2) = int(Z'bb67ae85', 4)
        state(3) = int(Z'3c6ef372', 4)
        state(4) = int(Z'a54ff53a', 4)
        state(5) = int(Z'510e527f', 4)
        state(6) = int(Z'9b05688c', 4)
        state(7) = int(Z'1f83d9ab', 4)
        state(8) = int(Z'5be0cd19', 4)
        datalen = 0
        bitlen = 0
    end subroutine

    subroutine sha256_update(state, data_buf, datalen, bitlen, input, input_len)
        integer(4), intent(inout) :: state(8)
        integer(1), intent(inout) :: data_buf(64)
        integer(4), intent(inout) :: datalen
        integer(8), intent(inout) :: bitlen
        integer(1), intent(in) :: input(*)
        integer, intent(in) :: input_len

        integer :: i

        do i = 1, input_len
            datalen = datalen + 1
            data_buf(datalen) = input(i)
            if (datalen == 64) then
                call sha256_transform(state, data_buf)
                bitlen = bitlen + 512
                datalen = 0
            end if
        end do
    end subroutine

    subroutine sha256_transform(state, data_block)
        integer(4), intent(inout) :: state(8)
        integer(1), intent(in) :: data_block(64)

        integer(4), parameter :: k(64) = (/ &
            int(Z'428a2f98',4), int(Z'71374491',4), int(Z'b5c0fbcf',4), int(Z'e9b5dba5',4), &
            int(Z'3956c25b',4), int(Z'59f111f1',4), int(Z'923f82a4',4), int(Z'ab1c5ed5',4), &
            int(Z'd807aa98',4), int(Z'12835b01',4), int(Z'243185be',4), int(Z'550c7dc3',4), &
            int(Z'72be5d74',4), int(Z'80deb1fe',4), int(Z'9bdc06a7',4), int(Z'c19bf174',4), &
            int(Z'e49b69c1',4), int(Z'efbe4786',4), int(Z'0fc19dc6',4), int(Z'240ca1cc',4), &
            int(Z'2de92c6f',4), int(Z'4a7484aa',4), int(Z'5cb0a9dc',4), int(Z'76f988da',4), &
            int(Z'983e5152',4), int(Z'a831c66d',4), int(Z'b00327c8',4), int(Z'bf597fc7',4), &
            int(Z'c6e00bf3',4), int(Z'd5a79147',4), int(Z'06ca6351',4), int(Z'14292967',4), &
            int(Z'27b70a85',4), int(Z'2e1b2138',4), int(Z'4d2c6dfc',4), int(Z'53380d13',4), &
            int(Z'650a7354',4), int(Z'766a0abb',4), int(Z'81c2c92e',4), int(Z'92722c85',4), &
            int(Z'a2bfe8a1',4), int(Z'a81a664b',4), int(Z'c24b8b70',4), int(Z'c76c51a3',4), &
            int(Z'd192e819',4), int(Z'd6990624',4), int(Z'f40e3585',4), int(Z'106aa070',4), &
            int(Z'19a4c116',4), int(Z'1e376c08',4), int(Z'2748774c',4), int(Z'34b0bcb5',4), &
            int(Z'391c0cb3',4), int(Z'4ed8aa4a',4), int(Z'5b9cca4f',4), int(Z'682e6ff3',4), &
            int(Z'748f82ee',4), int(Z'78a5636f',4), int(Z'84c87814',4), int(Z'8cc70208',4), &
            int(Z'90befffa',4), int(Z'a4506ceb',4), int(Z'bef9a3f7',4), int(Z'c67178f2',4) /)

        integer(4) :: m(64), a, b, c, d, e, f, g, h, t1, t2
        integer :: i, j

        ! Build message schedule
        j = 1
        do i = 1, 16
            m(i) = ior(ior(ior(ishft(iand(int(data_block(j),4), 255), 24), &
                               ishft(iand(int(data_block(j+1),4), 255), 16)), &
                               ishft(iand(int(data_block(j+2),4), 255), 8)), &
                               iand(int(data_block(j+3),4), 255))
            j = j + 4
        end do
        do i = 17, 64
            m(i) = sig1(m(i-2)) + m(i-7) + sig0(m(i-15)) + m(i-16)
        end do

        a = state(1); b = state(2); c = state(3); d = state(4)
        e = state(5); f = state(6); g = state(7); h = state(8)

        do i = 1, 64
            t1 = h + ep1(e) + ch(e, f, g) + k(i) + m(i)
            t2 = ep0(a) + maj(a, b, c)
            h = g; g = f; f = e; e = d + t1
            d = c; c = b; b = a; a = t1 + t2
        end do

        state(1) = state(1) + a; state(2) = state(2) + b
        state(3) = state(3) + c; state(4) = state(4) + d
        state(5) = state(5) + e; state(6) = state(6) + f
        state(7) = state(7) + g; state(8) = state(8) + h
    end subroutine

    subroutine sha256_final(state, data_buf, datalen, bitlen, hash)
        integer(4), intent(inout) :: state(8)
        integer(1), intent(inout) :: data_buf(64)
        integer(4), intent(inout) :: datalen
        integer(8), intent(inout) :: bitlen
        integer(1), intent(out) :: hash(32)

        integer :: i, idx

        i = datalen + 1

        if (datalen < 56) then
            data_buf(i) = int(Z'80', 1)
            i = i + 1
            do while (i <= 56)
                data_buf(i) = 0
                i = i + 1
            end do
        else
            data_buf(i) = int(Z'80', 1)
            i = i + 1
            do while (i <= 64)
                data_buf(i) = 0
                i = i + 1
            end do
            call sha256_transform(state, data_buf)
            data_buf(1:56) = 0
        end if

        bitlen = bitlen + int(datalen, 8) * 8
        data_buf(64) = int(iand(bitlen, int(Z'FF', 8)), 1)
        data_buf(63) = int(iand(ishft(bitlen, -8), int(Z'FF', 8)), 1)
        data_buf(62) = int(iand(ishft(bitlen, -16), int(Z'FF', 8)), 1)
        data_buf(61) = int(iand(ishft(bitlen, -24), int(Z'FF', 8)), 1)
        data_buf(60) = int(iand(ishft(bitlen, -32), int(Z'FF', 8)), 1)
        data_buf(59) = int(iand(ishft(bitlen, -40), int(Z'FF', 8)), 1)
        data_buf(58) = int(iand(ishft(bitlen, -48), int(Z'FF', 8)), 1)
        data_buf(57) = int(iand(ishft(bitlen, -56), int(Z'FF', 8)), 1)
        call sha256_transform(state, data_buf)

        do i = 1, 8
            idx = (i - 1) * 4
            hash(idx + 1) = int(iand(ishft(state(i), -24), 255), 1)
            hash(idx + 2) = int(iand(ishft(state(i), -16), 255), 1)
            hash(idx + 3) = int(iand(ishft(state(i), -8), 255), 1)
            hash(idx + 4) = int(iand(state(i), 255), 1)
        end do
    end subroutine

    function rotr(x, n) result(r)
        integer(4), intent(in) :: x
        integer, intent(in) :: n
        integer(4) :: r
        r = ior(ishft(x, -n), ishft(x, 32-n))
    end function

    function ch(x, y, z) result(r)
        integer(4), intent(in) :: x, y, z
        integer(4) :: r
        r = ieor(iand(x, y), iand(not(x), z))
    end function

    function maj(x, y, z) result(r)
        integer(4), intent(in) :: x, y, z
        integer(4) :: r
        r = ieor(ieor(iand(x, y), iand(x, z)), iand(y, z))
    end function

    function ep0(x) result(r)
        integer(4), intent(in) :: x
        integer(4) :: r
        r = ieor(ieor(rotr(x, 2), rotr(x, 13)), rotr(x, 22))
    end function

    function ep1(x) result(r)
        integer(4), intent(in) :: x
        integer(4) :: r
        r = ieor(ieor(rotr(x, 6), rotr(x, 11)), rotr(x, 25))
    end function

    function sig0(x) result(r)
        integer(4), intent(in) :: x
        integer(4) :: r
        r = ieor(ieor(rotr(x, 7), rotr(x, 18)), ishft(x, -3))
    end function

    function sig1(x) result(r)
        integer(4), intent(in) :: x
        integer(4) :: r
        r = ieor(ieor(rotr(x, 17), rotr(x, 19)), ishft(x, -10))
    end function

end program sha256_bench
