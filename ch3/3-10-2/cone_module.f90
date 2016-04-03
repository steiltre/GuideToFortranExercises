module cone_module
      ! Module that computes volume of cone
      implicit none

      real, parameter :: PI=4.D0*DATAN(1.D0)

      public :: cone_vol

contains

      function cone_vol(h, r) result(vol)
          ! Computes the volume of a cone with radius r and height h
          ! Variables:  r = radius of cone
          !             h = height of cone
          real, intent( in ) :: h
          real, optional, intent( in ) :: r
          real :: vol
          real :: temp_r    ! Need temporary variable because r has intent(in)

          ! Use r if available, otherwise set r = 1
          if (present(r)) then
              temp_r = r
          else
              temp_r = 1
          end if

          ! Compute volume of cone
          vol = PI * temp_r**2 * h / 3

      end function cone_vol

end module cone_module
