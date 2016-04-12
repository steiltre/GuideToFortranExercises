program card_number_generator
      ! generates a list of 8 digit card numbers
      implicit none

      ! Variables:  n = number of cards
      integer :: n, i

      read *, n

      open(unit = 1, file="card_numbers.txt", action="write", &
         status="replace" )

      do i = 1,n
        write(1,"(i8.8)") int( rand(0) * 99999999 )
      end do

      close(1)

end program card_number_generator
