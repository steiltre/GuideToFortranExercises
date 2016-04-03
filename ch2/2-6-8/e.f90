program e
      ! Approximates e using the formula (1+1/n)^n. Uses a sequence of
      ! values for n which are powers of an integer k
      implicit none

      ! Variables: k = integer to be exponentiated
      !            i = integer used as exponent (increased in loop)
      !            n = integer plugged into (1+1/n)^n
      !            approx = approximation to e
      integer :: k,i,n=1
      real :: approx

      ! Read integer to be exponentiated
      read *, k
      print *, "Input data  k: ", k

      ! Set-up table for approximations
      print "(a8, a19)", "n", "approximation"

      do i = 1,10
        ! Update n and the approximation
        n = n*k
        approx = (1 + 1.0D0/n) ** n

        print "(i8, f20.16)", n, approx
      end do

end program e

