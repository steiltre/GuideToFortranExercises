!Program that reads in first name, middle initial, and last name as 3
!variables and prints the full name

program print_name
      implicit none

      character(len=20) :: first, last
      character :: middle

      read *, first
      read *, middle
      read *, last

      print *, first, middle, " ", last

end program print_name
