program test
      !tests the swap module
      use swap_module
      implicit none

      !Variables: a,b = values to be swapped
      real :: a = 2.0, b = 3.5

      !Print original data
      print *, "Test Data: a:  ", a
      print *, "           b:  ", b

      !Swap a and b
      call swap(a,b)
      print *, "Swap a and b"

      !Print new values for a and b
      print *, "a:  ", a
      print *, "b:  ", b

end program test
