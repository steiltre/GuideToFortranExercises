program average
      ! Program that uses average_of_4_module to compute averages
      use average_of_4_module

      implicit none

      ! Variables:  x1, x2, x3, x4 = numbers to be averaged
      !             ave = average
      real :: x1, x2, x3, x4, ave

      call read_values()
      ave = average_of_4(x1, x2, x3, x4)
      call print_average()

contains

      subroutine read_values()
          read *, x1, x2, x3, x4

          print *, "Input data  x1:", x1
          print *, "            x2:", x2
          print *, "            x3:", x3
          print *, "            x4:", x4

      end subroutine read_values

      subroutine print_average()

          print *, "The average is ", ave

      end subroutine print_average

end program average
