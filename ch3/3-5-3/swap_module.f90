module swap_module
      ! Module containing the swap subroutine from text
      implicit none

      private

      public :: swap

      contains
          subroutine swap(a, b)
              real, intent(inout) :: a, b
              real :: temp

              ! Swaps a and b
              temp = a
              a = b
              b = temp
          end subroutine swap

end module swap_module
