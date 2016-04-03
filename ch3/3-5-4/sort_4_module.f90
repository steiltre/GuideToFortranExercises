module sort_4_module
      ! Module containing subroutine to sort 4 integer values
      use swap_module

      implicit none

      ! Module is private (no access to members from outside)
      private

      ! Make sort_4 accessible from outside
      public :: sort_4_int

contains
      subroutine sort_4_int(i1, i2, i3, i4)
          integer, intent(in out) :: i1, i2, i3, i4

          if (i1 > i2) then
              call swap(i1, i2)
          end if
          if (i1 > i3) then
              call swap(i1, i3)
          end if
          if (i1 > i4) then
              call swap(i1, i4)
          end if
          if (i2 > i3) then
              call swap(i2, i3)
          end if
          if (i2 > i4) then
              call swap(i2, i4)
          end if
          if (i3 > i4) then
              call swap(i3, i4)
          end if

      end subroutine sort_4_int

end module sort_4_module
