module loan_module
      ! Module to handle reading in principal, annual interest rate, and
      ! number of months to pay off and outputting monthly payment
      implicit none

      public

      ! Variables: prin = principal
      !            r = annual interest rate
      !            months = number of months to pay off loan
      !            payment = monthly payment
      !            balance = remaining balance
      !            prin_paid = principal paid
      !            interest = monthly interest
      real :: prin, r, payment, balance, prin_paid = 0, interest
      integer :: months, i

contains

      subroutine read_variables()
          print *, "Input principal:"
          read *, prin
          print *, "Input annual interest rate (as percentage):"
          read *, r
          print *, "Input number of months to pay off loan:"
          read *, months

          ! Remaining balance is initally equal to principal
          balance = prin

      end subroutine read_variables

      subroutine calculate_payment()
          print *, prin, r, months
          payment = (r/12/100 * prin * (1+r/12/100)**months)/((1+r/12/100)**months - 1)
      end subroutine calculate_payment

      subroutine print_payment()
          print "(a, f10.2)", "The monthly payment is $", payment
      end subroutine print_payment

      subroutine print_payment_schedule()
          print "(a7, a12, a18, a11)", "Month", "Interest", "Principal Paid", "Balance"

          do i = 1, months
            interest = balance * (r/1200)
            balance = balance - payment + interest
            prin_paid = prin_paid + payment - interest
            print "(i7, f12.2, f18.2, f11.2)", i, interest, &
                prin - balance, balance
          end do

      end subroutine print_payment_schedule

end module loan_module
