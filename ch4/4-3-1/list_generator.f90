program list_generator
      ! Generates a list of 8 digit integers
      implicit none

      ! Variables: n = size of list generated
      integer :: n, i

      read *, n

      open(unit = 1, file="list.in", action="write", &
          status="replace" )

      do i = 1,n
        write(1,"(f8.2)")  ( rand(0) * 99999 )
      end do

      close(1)

end program list_generator
