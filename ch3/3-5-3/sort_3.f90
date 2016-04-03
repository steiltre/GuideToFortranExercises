program sort_3
      ! Program to use the sort_3_module to read, sort, and print a
      ! sequence of 3 numbers
      use sort_3_module
      implicit none

      call read_the_numbers()
      call sort_the_numbers()
      call print_the_numbers()

end program sort_3
