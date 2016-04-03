module average_of_4_module
      ! Module with function to compute average of 4 numbers
      implicit none

      public average_of_4

contains

      function average_of_4(x1, x2, x3, x4) result(ave)
          real, intent(in) :: x1, x2, x3, x4
          real :: ave

          ave = (x1 + x2 + x3 + x4)/4
      end function average_of_4

end module average_of_4_module
