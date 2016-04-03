program four_seven
      ! Conducts experiment to calculate the percentage of times a 4 is
      ! rolled before a 7
      use random_int_module
      implicit none

      ! Variables:  number_of_exp = number of experiments conducted
      !             die_1 = roll of die 1
      !             die_2 = roll of die 2
      !             dice = total on dice
      !             fours = number of fours
      integer, parameter :: number_of_exp = 10000
      integer :: die_1, die_2, dice, fours, i

      call init_random_seed()

      fours = 0

      do i = 1, number_of_exp

         ! Keep rolling until a 4 or 7
         do
            ! Roll dice
            call random_int(die_1, 1, 6)
            call random_int(die_2, 1, 6)
            dice = die_1 + die_2

            ! Check for a four
            if  (dice == 4) then
                fours = fours + 1
                exit
            else if (dice == 7) then
                exit
            end if

         end do

      end do

      print "(a, f6.2)", "The percentage of times a 4 is rolled " &
          // "before a 7 is", &
          100.0 * real(fours) / (number_of_exp)

end program four_seven
