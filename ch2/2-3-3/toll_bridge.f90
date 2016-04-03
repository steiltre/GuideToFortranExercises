program toll_bridge
      !Determines the toll to be paid based on type and weight of
      !vehicle using a case construct
      implicit none

      !variables: toll = amount to be paid
      !           letter = letter representing vehicle class
      !           weight = symbol determining weight of trucks
      character :: letter, weight
      real :: toll

      !Polls for vehicle class and weight (for trucks)
      print *, "Enter vehicle class (C, B, or T)"
      read *, letter

      if (letter == "t" .or. letter == "T") then
              print *, "Enter < or > to indicate weight class"
              read *, weight
      end if

      !Determine toll to be paid
      select case (letter)
      case ("c", "C")
              toll = 3.0
      case ("b", "B")
              toll = 2.0
      case ("t", "T")
              select case (weight)
              case ("<")
                      toll = 6.0
              case (">")
                      toll = 10.0
              case default
                      print *, "Invalid weight class"
              end select
      case default
              print *, "Invalid vehicle class"
      end select

      !Print toll to be paid
      print "(a, f5.2)", "The toll is $", toll

end program toll_bridge
