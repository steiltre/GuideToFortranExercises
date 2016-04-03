module sort_3_module
      ! Module that uses sort_module and swap_module to read, sort, and
      ! print 3 numbers
      use swap_module
      use sort_module

      implicit none

      ! Module is public (everything within module can be accessed by
      ! any program or procedure using this module)
      public

      ! Don't want to declare these variables. They conflict with those declared in sort_module
      ! real :: n1, n2, n3

contains
      subroutine sort_the_numbers()
            ! Sort the numbers
            if (n1 > n2) then
                call swap(n1, n2)
            end if
            if (n1 > n3) then
                call swap(n1, n3)
            end if
            if (n2 > n3) then
                call swap(n2, n3)
            end if
      end subroutine sort_the_numbers

end module sort_3_module
