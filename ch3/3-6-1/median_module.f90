module median_module
      ! Module for computing median of 3 numbers
      implicit none

      public :: median3

contains

      function median3(i1, i2, i3) result(med)

          integer, intent(in) :: i1, i2, i3
          integer :: med

          ! Determine the media value
          if (i1 <= i2) then
              if (i2 <= i3) then
                  med = i2
              else if (i1 >= i3) then
                  med = i1
              else
                  med = i3
              end if
          else
              if (i1 <= i3) then
                  med = i1
              else if (i2 >= i3) then
                  med = i2
              else
                  med = i3
              end if
          end if

      end function median3

end module median_module
