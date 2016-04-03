program factorial_test
      ! Program to test factorial module
      use factorial_module
      implicit none

      ! Variables:  n = number to take factorial of
      !             res = n!
      integer :: n, res

      call read_values()
      res = factorial(n)
      call print_result()

contains

      subroutine read_values()

          read *, n
          print *, "Input data  n:",n

      end subroutine read_values

      subroutine print_result()

          print *, n, "! =", res

      end subroutine print_result

end program factorial_test
