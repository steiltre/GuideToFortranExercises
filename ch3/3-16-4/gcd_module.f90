module gcd_module
      ! Module with function to compute gcd of integers
      implicit none
      private

      public :: gcd

contains

      recursive function gcd(a,b) result(res)
          !Computes gcd of a and b using recursion

          !Variables:  a,b = integers to find gcd of
          !            res = gcd of a and b
          integer, intent(in) :: a,b
          integer :: res

          if ( mod(a,b) == 0) then
              res = b
          else
              res = gcd(b, mod(a,b))
          end if

      end function gcd

end module gcd_module
