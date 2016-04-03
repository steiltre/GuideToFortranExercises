program cone_volume
      ! Reads radius and height values, uses cone_module to compute the
      ! volume, and prints the volume
      use cone_module
      implicit none

      ! Variables:  rad = radius
      !             hgt = height
      !             vol = volume
      real :: rad, hgt, vol

      call read_values()
      vol = cone_vol(h=hgt,r=rad) ! Uses keywords to call cone_vol
      call print_volume()

contains

      subroutine read_values()

          read *, rad, hgt
          print *, "Input data  rad:", rad
          print *, "            hgt:", hgt

      end subroutine read_values

      subroutine print_volume()

          print *, "The volume is ", vol

      end subroutine print_volume

end program cone_volume
