module sort_module
      ! sort_3_module from text without swapping
      implicit none
      public
      real :: n1, n2, n3

      public :: read_the_numbers, &
                print_the_numbers

contains
      subroutine read_the_numbers()
          read *, n1, n2, n3
          print *, "Input data  n1:", n1
          print *, "            n2:", n2
          print *, "            n3:", n3
      end subroutine read_the_numbers

      subroutine print_the_numbers()
          print *, "the numbers, in ascending order, are:"
          print *, n1, n2, n3
      end subroutine print_the_numbers

end module sort_module
