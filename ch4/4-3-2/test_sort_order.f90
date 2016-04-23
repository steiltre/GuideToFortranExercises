program test_sort_order
      ! Program to test number of swaps needed by quick sort
      use sort_module_count_swaps
      use list_generator_module

      implicit none

      ! Variables:  list = list of random numbers
      !             sizes = array of list sizes to test
      !             swaps = array of number of swaps required
      !             const = array tracking constant in order of convergence
      real, allocatable, dimension(:) :: list
      integer, dimension(1:12), parameter :: sizes = [16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768]
      integer, dimension(1:12) :: swaps
      real, dimension(1:12) :: const
      integer :: i,n, prev_swap_count=0
      character(len=20), parameter :: fmt = "(i10, i10, f10.3)"  ! Format string for convergence data
      character(len=20), parameter :: fmt2 = "(a10, a10, a10)"

      n = size(sizes)
      do i = 1,n
        allocate( list(sizes(i)))
        call random_list(list)

        call quick_sort(list)

        swaps(i) = get_swap_count() - prev_swap_count

        prev_swap_count = swaps(i)

        const(i) = swaps(i)/(sizes(i)*log(float(sizes(i))))

        deallocate(list)

      end do

      ! Print convergence data
      print fmt2, "Size", "Swaps", "Constant"
      do i = 1,n
        print fmt, sizes(i), swaps(i), const(i)
      end do

end program test_sort_order
