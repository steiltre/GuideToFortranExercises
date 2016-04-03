program power_of_three
      ! Prints the largest power of 3 less than 5000
      implicit none

      !Variables: pow_of_3 = last stored power of 3
      integer :: pow_of_3 = 1

      do
        if (pow_of_3 * 3 < 5000) then
                pow_of_3 = pow_of_3 * 3
        else
                exit
        end if
      end do

      print *, "The largest power of 3 less than 5000 is ", pow_of_3

end program power_of_three
