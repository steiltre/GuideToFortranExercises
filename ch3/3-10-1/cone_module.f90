module cone_module
      ! Module that computes volume of cone
      implicit none

      real, parameter :: PI=4.D0*DATAN(1.D0)

      public :: cone_vol

contains

      function cone_vol(r, h) result(vol)
          ! Computes the volume of a cone with radius r and height h
          ! Variables:  r = radius of cone
          !             h = height of cone
          real, intent( in ) :: r, h
          real :: vol

          ! Compute volume of cone
          vol = PI * r**2 * h / 3

      end function cone_vol

end module cone_module
