module binomial_coefficient_module
      ! Module containing function to compute binomial coefficients
      ! without recursion
      use factorial_module
      implicit none

      public binom_coeff

contains

      function binom_coeff(n,k) result(res)
          ! Computes binomial coefficient "n choose k" non-recursively
          ! Variables:  n = n in "n choose k"
          !             k = k in "n choose k"
          integer, intent(in) :: n, k
          integer :: res

          res = factorial(n)/(factorial(k)*factorial(n-k))

      end function binom_coeff

end module binomial_coefficient_module
