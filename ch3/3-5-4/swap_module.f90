module swap_module
      ! Module containing the swap subroutine from text
      implicit none

      private

      public :: swap

      contains
          subroutine swap(a, b)
              integer, intent(inout) :: a, b
              integer :: temp

              ! Swaps a and b
              temp = a
              a = b
              b = temp
          end subroutine swap

end module swap_module
