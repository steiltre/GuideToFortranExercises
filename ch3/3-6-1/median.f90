program median
      ! Read values and determine the median
      use median_module
      implicit none

      integer :: i1, i2, i3, med

      call read_values()
      med = median3(i1,i2,i3)
      call print_median()

contains

      subroutine read_values()
          read *, i1, i2, i3

          print *, "Input Data  i1:", i1
          print *, "            i2:", i2
          print *, "            i3:", i3

      end subroutine read_values

      subroutine print_median()

          print *, "The median is ", median3(i1,i2,i3)

      end subroutine print_median

end program median
