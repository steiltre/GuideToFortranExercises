program recurrence
      ! Evaluates a certain recurrence recursively and verifies that the
      ! explicit formula gives the same answer
      ! WRITTEN VERY INEFFICIENTLY FOR THE DESIRED TESTING: COMPUTES ALL
      ! PREVIOUS VALUES IN EACH STEP OF DO LOOP
      implicit none

      ! Variables:  max = highest value tested
      !             recur = value returned by recursion
      !             expli = value returned by explicit formula
      integer, parameter :: max = 30
      integer :: i, recur, expli

      do i = 1,max
          recur = recursion(i)
          expli = explicit(i)
          print *, "The values returned by the recursion and the" &
               // " explicit formula are ", recur, "and", expli

      end do

contains

      recursive function recursion(i) result(res)

          integer, intent(in) :: i
          integer :: res

          if (i == 0) then
              res = 0
          else if (i == 1 .or. i == 2) then
              res = 1
          else
              res = 2*recursion(i-1) + recursion(i-2) - 2*recursion(i-3)
          end if

      end function recursion

      function explicit(i) result(res)

          integer, intent(in) :: i
          integer :: res

          res = ( (-1)**(i+1) + 2**i )/3

      end function explicit

end program recurrence
