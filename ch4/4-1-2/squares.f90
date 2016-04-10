program squares
      ! Assigns the squares of the first 100 integers to a list
      implicit none

      ! Variables:  list = list of integer squares
      integer :: i
      integer, dimension(1:100) :: list = [ (i**2, i = 1,100) ]

      print *, list

end program squares
