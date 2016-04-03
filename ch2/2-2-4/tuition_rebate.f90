program tuition_rebate
      !Calculates the tuition rebate for employees of The Enlightened
      !Corporation
      implicit none

      !Variables: tuition = employee cost of tuition
      !           rebate = rebate paid by company
      real :: tuition, rebate

      !Poll for tution
      read *, tuition
      print "(a, f7.2)", "Input data: tuition = ", tuition

      !Calculate rebate
      if (tuition <= 500) then
              rebate = 0.8 * tuition
      else if (tuition > 500 .and. tuition <= 900) then
              rebate = 400 + 0.6 * (tuition - 500)
      else if (tuition > 900 .and. tuition <= 1200) then
              rebate = 640 + 0.4 * (tuition - 900)
      else
              rebate = 760.0
      end if

      !Print rebate
      print "(a, f6.2)", "The employee's rebate is $", rebate

end program tuition_rebate
