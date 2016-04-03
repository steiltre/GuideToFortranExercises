program quadratic_solver2
      !solves quadratic equations using z1*z2 = a/c to get accurate
      !roots for large b
      implicit none

      !variables: a, b, c = coefficients
      !           z1, z2 = roots
      real :: a, b, c
      complex :: z1, z2

      !Read the coefficients
      read *, a, b, c
      print *, "Input data  a:", a
      print *, "            b:", b
      print *, "            c:", c

      !Calculate roots
      z1 = (-b + sqrt( cmplx( b**2 - 4*a*c)))/(2*a)
      z2 = c/(a*z1)

      !Print roots
      print *, "The roots are:"
      print *, "z1 =", z1
      print *, "z2 =", z2

end program quadratic_solver2
