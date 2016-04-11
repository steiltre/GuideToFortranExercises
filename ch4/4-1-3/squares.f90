program squares
      ! Program that creates array of first n squares and prints all
      ! values not in array
      implicit none

      ! Variables:  n = number of squares
      !             list = list of squares (allocatable)
      integer :: n, i
      integer, allocatable, dimension(:) :: list

      read *, n
      print *, "Input data  n:", n

      ! Allocate array of size n
      allocate (list(n))

      call compute_squares()
      call print_nonsquares()

contains

      subroutine compute_squares()
          do i=1,n
            list(i) = i**2
          end do
      end subroutine compute_squares

      subroutine print_nonsquares()

          do i = 1,n**2
            if ( all( i .ne. list ) ) then
                print *, i
            end if
          end do

      end subroutine print_nonsquares

end program squares
