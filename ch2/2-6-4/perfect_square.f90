program perfect_square
      !prints a list of all numbers btween 1 and 100 that are NOT
      !perfect squares
      implicit none

      integer :: n,m

      !Check for perfect squares and print any number that is not a
      !perfect square
      do n = 1, 100
        square_check: block
          do m = 1, n / 2
            if (m**2 == n) then
                  ! If not perfect square, exit square check and try next
                  ! integer
                  exit square_check
            end if
          end do
          ! Print integer if never thrown out of square_check
          print *, n
        end block square_check
      end do

end program perfect_square
