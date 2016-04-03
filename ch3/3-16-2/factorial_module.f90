module factorial_module
      ! Module containing function for computing factorials
      implicit none

      public factorial

contains

      function factorial(n) result(res)
          ! Computes the factorial of a number
          integer, intent(in) :: n
          integer :: res, i

          res = 1

          if (n <= 1) then
              res = 0
          end if

          do i=n,2,-1
              res = res*i
          end do

      end function factorial

end module factorial_module
