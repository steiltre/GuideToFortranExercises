program test_sort
      ! Program to test sorting module
      use sort_module_count_swaps

      implicit none

      real, allocatable, dimension(:) :: list
      real :: start, finish

      call read_numbers()

      call cpu_time(start)
      call quick_sort(list)
      call cpu_time(finish)

      call print_list()

      call print_swaps()

      call print_time()

contains

      subroutine read_numbers()
      ! Variables: list = array of numbers
      !            chunk = size of temporary array
      !            len_temp = length of temporary array
      integer, parameter :: chunk = 1000
      real, dimension(1:chunk) :: temp_list
      integer :: len_temp
      integer :: i
      integer :: ios
      character(len=99) :: iom

      ! Set default length of temporary array to chunk (will change
      ! later if array is not completely filled
      len_temp = 1000

      ! Initialize array on numbers
      list = [ real :: ]
      do
        ! Set temporary array to be all -1 (togger to check for errors
        ! later)
        ! temp_list = -1

        ! Fill temporary array
        do i = 1,chunk
          read (unit=*, fmt=*, iostat=ios, iomsg=iom) temp_list(i)
          if (ios < 0) then
              ! Increase counter (for adding card numbers later) and
              ! exit when end of file is reached
              len_temp = i - 1
              exit
          else if (ios > 0) then
              print *, trim(iom)
              cycle
          end if
        end do

        ! Add new numbers to array
        list = [list, temp_list(1:len_temp) ]

        ! If end of file has been reached, stop reading numbers
        if (len_temp < chunk) exit

      end do

      end subroutine read_numbers

      subroutine print_list()
          print "(4f10.2)", list
      end subroutine print_list

      subroutine print_time()
          print *, "The sort took", finish-start, "seconds"
          print *, start
          print *, finish
      end subroutine print_time

end program test_sort
