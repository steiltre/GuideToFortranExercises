module binomial_coefficient
      ! Module containing recursive function to calculate binomial
      ! coefficients
      implicit none

      public :: binom_coeff

contains

      recursive function binom_coeff(n, k) result(coeff)
          integer, intent(in) :: n,k
          integer :: coeff

          if (k > n) then
              coeff = 0
          else if (k < 0) then
              coeff = 0
          else if (n == k) then
              coeff = 1
          else if (k == 0) then
              coeff = 1
          else
              coeff = binom_coeff(n-1, k-1) + binom_coeff(n-1,k)
          end if

      end function binom_coeff

end module binomial_coefficient
