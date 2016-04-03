program integral
      ! Calculates a trapezoidal approximation to an area using n
      ! trapezoids.
      ! n is read from the input file.

      ! The region is bounded by lines x = a, y = 0, x = b, and the
      ! curve y = sin(x).
      ! a and b also are read fromt he input file.
      implicit none

      ! Variables: a, b = limits of integration
      !            h = width of trapezoids
      !            total = value of integral
      !            n = number of trapezoids
      intrinsic :: sin
      real :: a, b, h, total
      integer :: i,n

      ! Read limits of integration and number of trapezoids
      read *, n
      print *, "Input data  n:", n
      read *, a, b
      print *, "Input data  a:", a
      print *, "            b:", b

      h = (b-a)/n
      ! Calculates the total f(a)/2 + f(a+h) + ... + f(b-h) + f(b)/2
      ! Do the first and last terms first
      total = 0.5 * (sin(a) + sin(b))
      do i = 1, n-1
        total = total + sin(a + i*h)
      end do

      print *, "Trapezoidal approximation to the area =", &
              h * total
end program integral
