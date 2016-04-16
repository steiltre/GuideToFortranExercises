program test_insert
      ! Program to test insert subroutine from list_module
      use list_module
      implicit none

      ! Variables:  max_size = size of array
      !             list = array of real numbers
      integer, parameter :: max_size=10
      integer :: i
      real, dimension(1:max_size) :: list = 0
      real :: temp_real  ! Value to be put in list

      do i=1,max_size
        read *, temp_real
        call insert(list, i-1, max_size, temp_real)
      end do

      print "(f5.2)", list

end program test_insert
