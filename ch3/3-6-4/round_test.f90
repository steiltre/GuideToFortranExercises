program round_test
      ! Program that reads a value to be rounded and a power of 10 to
      ! round to, uses the round module to round, then prints rounded
      ! number
      use round_module
      implicit none

      ! Variables:  x = number to be rounded
      !             n = power of 10 to round to
      !             x_rdd = rounded value of x
      real :: x, x_rdd
      integer :: n

      call read_values()
      x_rdd = round(x, n)
      call print_rounded_number()

contains

      subroutine read_values()

          read *, x, n

          print *, "Input data  x:", x
          print *, "            n:", n

      end subroutine read_values

      subroutine print_rounded_number()

          print *, "The rounded value is ", x_rdd

      end subroutine print_rounded_number

end program round_test
