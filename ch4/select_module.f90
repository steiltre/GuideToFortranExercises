module select_module
      ! Module containing subroutine to select element in list
      implicit none

      public :: quick_select

contains

      recursive subroutine quick_select (list, k, element, error)
          ! Finds the k-th largest element in list
          ! Returns error if trying to select element outside of list
          ! bounds

          real, dimension(:), intent(in) :: list
          integer, intent(in) :: k
          real, intent(out) :: element
          logical, intent(out) :: error
          real, dimension(:), allocatable :: smaller, larger
          integer :: i,n, &
              number_smaller, number_equal, number_larger
          real :: chosen

          n = size(list)
          if (n <= 1) then
              error = .not. (n == 1 .and. k == 1)
              if (error) then
                  element = 0.0 ! A value must be assigned because
                                ! element is intent(out)
              else
                  element = list(1)
              end if

          else
              allocate (smaller(n), larger(n))
              chosen = list(1)
              number_smaller = 0
              number_equal = 1
              number_larger = 0

              do i = 2,n
              if (list(i) < chosen) then
                  number_smaller = number_smaller + 1
                  smaller(number_smaller) = list(i)
              else if (list(i) == chosen) then
                  number_equal = number_equal + 1
              else
                  number_larger = number_larger + 1
                  larger(number_larger) = list(i)
              end if
              end do

              if (k <= number_smaller) then
                  call quick_select &
                      (smaller(1:number_smaller), &
                      k, element, error)
              else if (k <= number_smaller + number_equal) then
                  element = chosen
                  error = .false.
              else
                  call quick_select &
                      (larger(1:number_larger), &
                      k - number_smaller - number_equal, &
                      element, error)
              end if
              deallocate(smaller,larger)
          end if

      end subroutine quick_select

end module select_module
