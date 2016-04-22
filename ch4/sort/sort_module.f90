module sort_module
      ! Module containing sorting algorithms
      implicit none

      public :: quick_sort, interchange_sort

contains

      recursive subroutine quick_sort(list)
          ! Fast sorting algorithm that recursively sorts values less
          ! than middle value in list and values greater than middle value

          real, dimension(:), intent(in out) :: list

          integer :: i, j, n
          real :: chosen, temp
          integer, parameter :: max_simple_sort_size = 6

          n = size(list)
          if ( n <- max_simple_sort_size) then
              ! Use interchange sort for small lists
              call interchange_sort(list)
          else
              ! Use partition ("quick") sort
              chosen = list(n/2)
              i=0
              j=n+1

              do
                ! Scan list from left end
                ! until element >= chosen is found
                do
                  i = i + 1
                  if (list(i) >= chosen) exit
                end do
                ! Scan list from right end
                ! until element <= chosen is found
                do
                  j = j - 1
                  if (list(j) <= chosen) exit
                end do
                if (i < j) then
                    ! Swap two out of place elements
                    temp = list(i)
                    list(i) = list(j)
                    list(j) = temp
                else if (i == j) then
                    i = i + 1
                    exit
                else
                    exit
                end if
              end do

              if (1 < j) call quick_sort(list(:j))
              if (i < n) call quick_sort(list(i:))
          end if ! test for small array

      end subroutine quick_sort

      subroutine interchange_sort(list)

          real, dimension(:), intent(in out) :: list
          integer :: i, j
          real :: temp

          do i = 1, size(list) - 1
            do j = i + 1, size(list)
              if (list(i) > list(j)) then
                  temp = list(i)
                  list(i) = list(j)
                  list(j) = temp
              end if
            end do
          end do
      end subroutine interchange_sort

end module sort_module
