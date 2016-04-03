module random_int_module

      implicit none
      private
      public :: random_int, init_random_seed

contains

      subroutine random_int(random_result, low, high)

          integer, intent(out) :: random_result
          integer, intent(in) :: low, high
          real :: uniform_random_value

          call random_number(uniform_random_value)
          random_result = &
              int((high - low + 1) * uniform_random_value + low)

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
