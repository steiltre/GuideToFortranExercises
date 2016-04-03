program sort_4
      ! Reads 4 numbers, sorts them, then prints in increasing order
      use sort_4_module

      implicit none

      !Variables: i1, i2, i3, i4 = integers to be sorted
      integer :: i1, i2, i3, i4

      call read_numbers()

      call sort_4_int(i1, i2, i3, i4)

      call print_numbers()

contains

      subroutine read_numbers()
          read *, i1, i2, i3, i4

          print *, "Input data  i1:", i1
          print *, "            i2:", i2
          print *, "            i3:", i3
          print *, "            i4:", i4

      end subroutine read_numbers

      subroutine print_numbers()
          print *, "The numbers in ascending order are: "
          print *,  i1, i2, i3, i4

      end subroutine print_numbers

end program sort_4
