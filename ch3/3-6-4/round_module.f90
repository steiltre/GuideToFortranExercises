module round_module
      ! Module that contains function which rounds real number to
      ! nearest power of 10
      implicit none

      public :: round

contains

      function round(x, n) result(x_rdd)
          ! Rounds value of x to nearest multiple of 10**n

          ! Variables:  x = number to round
          !             n = power of 10 to round to
          !             x_rdd = rounded value of x
          real, intent( in ) :: x
          integer, intent( in ) :: n
          real :: x_rdd

          ! Perform initial truncation
          x_rdd = 10.0**n * int(10.0**(-n) * x)

          ! Alter x_rdd if truncation didn't round correctly
          if (x - x_rdd >= 10.0**n * 0.5) then
              x_rdd = x_rdd + 10.0**n
          else if (x - x_rdd <= 10.0**n * (-0.5)) then
              x_rdd = x_rdd - 10.0**n
          end if

      end function round

end module round_module
