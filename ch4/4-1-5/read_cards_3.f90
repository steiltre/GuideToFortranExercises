program read_cards_3
      ! Modified version of read_cards_2 using fixed-size array to
      ! temporarily hold card numbers
      implicit none

      ! Variables:  lost_card = array of card numbers
      !             chunk = size of temporary array
      !             len_temp = length of temporary array
      integer, parameter :: chunk = 1000
      integer, allocatable, dimension(:) :: lost_card
      integer, dimension(1:chunk) :: temp_card
      integer :: len_temp
      integer :: i
      integer :: ios
      character(len=99) :: iom
      real :: start, finish

      ! Start timer
      call cpu_time(start)

      ! Set default length of temporary array to chunk (will change
      ! later if array is not completely filled
      len_temp = 1000

      ! Initialize array of lost_cards
      lost_card = [ integer :: ]
      do
        ! Set temporary array to be all -1 (toggle to check for errors
        ! later)
        !temp_card = -1

        ! Fill temporary array
        do i = 1,chunk
          read (unit=*, fmt=*, iostat=ios, iomsg=iom) temp_card(i)
          if (ios < 0) then
              ! Increase counter (for adding card numbers later) and
              ! exit when end of file is reached
              len_temp = i-1
              exit
          else if (ios > 0) then
              print *, trim(iom)
              cycle
          end if
        end do

        ! Add new card numbers to array
        lost_card = [lost_card, temp_card(1:len_temp) ]

        ! If end of file has been reached, stop reading numbers
        if (len_temp < chunk) exit

      end do

      call cpu_time(finish)

      print "(4i8)", lost_card
      print *, "The time elapsed is", finish - start, "seconds."

end program read_cards_3
