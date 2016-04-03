program binom_coeff_test
      ! Program to test binomial coefficient module
      use binomial_coefficient
      implicit none

      ! Variables:  n = n in "n choose k"
      !             k = k in "n choose k"
      !             m = n choose k
      integer :: k,n,m

      call read_values()
      m = binom_coeff(n,k)
      call print_result()

contains

      subroutine read_values()
          read *, n, k

          print *, "Input data  n:", n
          print *, "            k:", k

      end subroutine read_values

      subroutine print_result()

          print *, n, " choose ", k, "=", m

      end subroutine print_result

end program binom_coeff_test
