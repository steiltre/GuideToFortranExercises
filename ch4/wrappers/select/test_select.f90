program test_select
      ! Program to test select module
      use select_module_count_compares
      use list_generator_module

      implicit none

      integer, parameter :: n = 1000000, k=5000
      real, dimension(1:n) :: list
      logical :: err
      real :: res
      integer :: compare_count
      real :: start, finish

      call random_list(list)

      call cpu_time(start)

      call quick_select(list,k,res,err)

      call cpu_time(finish)

      ! print *, res

      compare_count = get_compare_count()

      print *, compare_count, "compares were needed"

      print *, "Selecting took", finish-start, "seconds"

end program test_select
