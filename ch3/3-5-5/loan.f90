program loan
      use loan_module
      implicit none

      ! Module does all of the work
      call read_variables()
      call calculate_payment()
      call print_payment()
      call print_payment_schedule()

end program loan
