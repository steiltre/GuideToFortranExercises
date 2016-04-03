program coin_flip
      ! Runs simulation to determine the percentage of times exactly 5
      ! heads are flipped when 10 coins are flipped
      use random_int_module
      implicit none

      ! Variables:  flip = value of flipped coin (0=tails, 1=heads)
      !             wins = number of times 5 coins are flipped
      !             heads = number of heads flipped in current
      !             experiment
      !             number_of_exp = number of experiments
      integer, parameter :: number_of_exp = 10000
      integer :: flip, wins, heads, i, j

      wins = 0
      call init_random_seed()

      do i = 1, number_of_exp
         heads = 0

         ! Flip coin ten times
         do j = 1, 10
            call random_int(flip, 0,1)

            ! Check for heads
            if (flip == 1) then
                heads = heads +1
            end if

         end do

         ! Check if exactly 5 heads were flipped
         if (heads == 5) then
             wins = wins+1
         end if

      end do

      ! Print the percentage of times 5 heads appeared
      print "(a, f6.2)", "The percentage of times 5 heads were " &
          // "flipped is", 100.0 * real(wins)/number_of_exp

end program coin_flip
