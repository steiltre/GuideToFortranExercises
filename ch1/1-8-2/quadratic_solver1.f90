program quadratic_solver1
      !calculates and prints roots of quadratic equation
      implicit none

      !variables: a, b, c = coeffiecients
      !           z1, z2 = roots
      !           disc_sqr = square root of discriminant

      real :: a, b, c
      complex :: z1, z2, disc_sqr

      !Read the coefficients
      read *, a, b, c
      print *, "Input data a:", a
      print *, "           b:", b
      print *, "           c:", c

      !Calculate roots
      disc_sqr = sqrt( cmplx(b**2 - 4*a*c))
      z1 = (-b + disc_sqr)/(2*a)
      z2 = (-b - disc_sqr)/(2*a)

      !Print the roots
      print *, "The roots are:"
      print *, "z1 =", z1
      print *, "z2 =", z2

end program quadratic_solver1
