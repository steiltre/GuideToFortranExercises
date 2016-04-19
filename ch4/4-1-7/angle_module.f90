module angle_module
      ! Module containing function to compute angle between two vectors
      ! in three dimensions
      implicit none

      public :: angle

contains

      function angle(v1,v2) result(ang)
          ! Returns angle between v1 and v2 in three dimensions
          implicit none

          ! Variables ::  norm_1 = modulus of v1
          !               norm_2 = modulus of v2
          !               ang = angle between v1 and v2
          real, dimension(1:3), intent(in) :: v1, v2
          real :: norm_1, norm_2
          real :: ang

          norm_1 = sqrt( v1(1)**2 + v1(2)**2 + v1(3)**2 )
          norm_2 = sqrt( v2(1)**2 + v2(2)**2 + v2(3)**2 )

          ang = acos( (v1(1)*v2(1) + v1(2)*v2(2) + v1(3)*v2(3))/(norm_1 &
          * norm_2))

      end function angle

end module angle_module
