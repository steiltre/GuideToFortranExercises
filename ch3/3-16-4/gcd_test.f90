program gcd_test
      ! Program to test gcd module
      use gcd_module
      implicit none

      ! Variables:  a,b = integers to find gcd of
      !             res = gcd of a and b
      integer :: a,b,res

      call read_values()
      res = gcd(a,b)
      call print_result()

contains

      subroutine read_values()
          read *, a, b

          print *, "Input data  a:", a
          print *, "            b:", b

      end subroutine read_values

      subroutine print_result()
          print *, "The gcd of ", a, " and ", b, " is ", res
      end subroutine print_result

end program gcd_test
