program cone_volume
      ! Reads radius and height values, uses cone_module to compute the
      ! volume, and prints the volume
      use cone_module
      implicit none

      ! Variables:  rad = radius
      !             hgt = height
      !             vol = volume
      !             vol_no_rad = volume if radius hadn't been input
      real :: rad, hgt, vol, vol_no_rad

      call read_values()
      vol = cone_vol(hgt,rad)
      vol_no_rad = cone_vol(hgt)    ! Volume with no radius input
      call print_volume()

contains

      subroutine read_values()

          read *, hgt, rad
          print *, "Input data  hgt:", hgt
          print *, "            rad:", rad

      end subroutine read_values

      subroutine print_volume()

          print *, "The volume is ", vol
          print *, "With no radius input, the volume returned is ", vol_no_rad

      end subroutine print_volume

end program cone_volume
