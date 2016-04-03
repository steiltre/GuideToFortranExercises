program read_until_zero
      ! Reads integers until a zero is found. Then prints the last
      ! nonzero entry
      implicit none

      ! Variables: buffer = input integer
      !            last = last nonzero integer
      integer :: buffer, last

      do
        read *, buffer

        print *, "Input data: buffer ", buffer

        !store number if nonzero
        if (buffer /= 0) then
                last = buffer
        else
                exit
        end if
      end do

      print *, "The last number before the first zero is ", last

end program read_until_zero
