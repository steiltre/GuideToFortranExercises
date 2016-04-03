program two_three_twelve
      ! Experimentally determines the percentage of times the sum of two
      ! dice totals 2, 3, or 12
      use random_int_module
      implicit none

      ! Variables:  number_of_rolls = number of rolls in experiment
      !             die_1 = roll of first die
      !             die_2 = roll of second die
      !             dice = total on dice
      !             wins = number of 2, 3, and 12
      integer, parameter :: number_of_rolls = 100000
      integer :: die_1, die_2, dice, i, wins

      call init_random_seed()
      wins = 0

      ! Roll dice
      do i = 1, number_of_rolls
         call random_int(die_1, 1, 6)
         call random_int(die_2, 1, 6)
         dice = die_1 + die_2
         if ((dice == 2) .or. (dice == 3) .or. (dice == 12)) then
             wins = wins + 1
         end if
      end do

      print "(a, f6.2)", &
          "The percentage of rolls that are 2, 3, or 12 is", &
          100.0 * real(wins) / real(number_of_rolls)

end program two_three_twelve
