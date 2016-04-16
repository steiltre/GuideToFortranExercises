module list_module
      ! Module that contains subroutine to insert real number into an
      ! ordered array of real numbers
      implicit none

      public :: insert

contains

      subroutine insert(list, n, max_size, new_entry)
          ! Notes:  -assumes list is not dynamically allocated
          !         -uses cshift to place new_entry in correct position
          !          when list is not maximum size
          !         -uses eoshift to place new_entry in correct position
          !         when list is of maximum size

          ! Variables  list = array of real numbers
          !            n = number of entries in list
          !            max_size = maximum number of entries in list
          !            new_entry = value to be put in array
          !            pos = position within list to put new_entry
          real, intent(inout), dimension(1:max_size) :: list
          integer, intent(in) :: n, max_size
          real, intent(in) :: new_entry
          integer :: pos, i

          ! If new_entry is smaller than all values in list, place at
          ! beginning
          pos = 1

          ! Determine position for new_entry
          do i = 1,n
            if (new_entry > list(i)) then
                pos = i+1
            end if
          end do

          ! Place new entry in correct place
          if (n < max_size) then
              ! insert value and shift to get in correct place
              list(n+1) = new_entry
              list(pos:n+1) = cshift(list(pos:n+1), -1)

          elseif (n == max_size) then
              ! insert value and shift to get in correct place
              list(pos:n) = eoshift(list, -1, new_entry)

          endif

      end subroutine insert

end module list_module
