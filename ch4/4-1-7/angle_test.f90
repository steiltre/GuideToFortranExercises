program angle_test
      ! Program to test angle_module
      use angle_module
      implicit none

      ! Variables:  vec1,vec2 = vectors to find angle between
      !             ang = angle between vec1 and vec2
      real, dimension(3) :: vec1, vec2
      real :: ang

      call read_values()
      ang = angle(vec1, vec2)
      call print_angle()

contains

      subroutine read_values()
          read *, vec1(1), vec1(2), vec1(3)
          read *, vec2(1), vec2(2), vec2(3)
      end subroutine read_values

      subroutine print_angle()
          print *, "The angle between"
          print *, "(", vec1, ") and (", vec2, "is", ang
      end subroutine print_angle

end program angle_test
