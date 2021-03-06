program read_cards_2
      ! read_cards_2 program from pg 130

      implicit none
      integer, dimension(:), allocatable :: lost_card
      integer :: card, ios
      character(len=99) :: iom
      real :: start, finish

      call cpu_time(start)

      lost_card = [ integer :: ]
      do
        read (unit=*, fmt=*, iostat=ios, iomsg = iom) card
        if ( ios < 0 ) exit
        if ( ios > 0 ) then
            print *, trim(iom)
            cycle
        end if
        lost_card = [ lost_card, card ]
      end do

      call cpu_time(finish)

      print "(4i8)", lost_card

      print *, "The elapsed time is ", finish-start, "seconds."

end program read_cards_2
