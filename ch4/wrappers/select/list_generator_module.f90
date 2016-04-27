module list_generator_module
      ! Module to generate random lists
      use random_module
      implicit none

      public :: random_list

contains

      subroutine random_list(list,n)
          ! Fills list with random real numbers
          real, dimension(1:n), intent(out) :: list
          integer :: n,i
          real :: temp
          real, parameter :: lower=0, upper=99999999

          do i = 1,n
            call random_real(temp,lower,upper)
            list(i) = temp
          end do

      end subroutine random_list

end module list_generator_module
