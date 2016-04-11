program rank15
      ! Creates a rank-15 array with bounds of 1-2 in each dimension and
      ! assigns the value of 2 to each entry
      implicit none

      ! Variables:  array = rank-15 array
      integer, dimension(2,2,2,2,2,2,2) :: array = 1

      print *, sum(array)
      print *, product(array)

end program rank15
