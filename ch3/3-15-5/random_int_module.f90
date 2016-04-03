module random_int_module

      implicit none
      private
      public :: random_int, init_random_seed

contains

      subroutine random_int(random_result, low, high)

          integer, intent(out) :: random_result
          integer, optional, intent(in) :: low, high
          integer :: temp_low, temp_high
          real :: uniform_random_value

          if (present(low)) then
              temp_low = low
          else
              temp_low = 1
          end if

          if (present(high)) then
              temp_high = high
          else
              temp_high = temp_low + 1
          end if

          call random_number(uniform_random_value)
          random_result = &
              int((temp_high - temp_low + 1) * uniform_random_value + temp_low)

      end subroutine random_int

      SUBROUTINE init_random_seed()
            INTEGER :: i, n, clock
            INTEGER, DIMENSION(:), ALLOCATABLE :: seed

            CALL RANDOM_SEED(size = n)
            ALLOCATE(seed(n))

            CALL SYSTEM_CLOCK(COUNT=clock)

            seed = clock + 37 * (/ (i - 1, i = 1, n) /)
            CALL RANDOM_SEED(PUT = seed)

            DEALLOCATE(seed)
      END SUBROUTINE

end module random_int_module
