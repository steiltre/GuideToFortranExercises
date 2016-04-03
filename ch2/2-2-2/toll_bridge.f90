program toll_bridge
      !polls user for vehicle and computes toll to be paid
      implicit none

      !Variables: vehicle class = type of vehicle entered (C=car, B=bus,
      !T=truck)
      !           weight = weight for trucks
      !           toll = toll to be paid
      character :: vehicle_class, weight
      real :: toll = -1.0

      !Polls user for vehicle class and weight if truck
      print *, "Enter vehicle class (C, B, or T)"
      read *, vehicle_class

      if (vehicle_class == "T" .or. vehicle_class == "t") then
              print *, "Enter < or > to indicate weight class"
              read *, weight
      end if

      !Determine toll to be paid and tell if input was invalid
      if (vehicle_class == "C" .or. vehicle_class == "c") then
              toll = 3.0
      else if (vehicle_class == "B" .or. vehicle_class == "b") then
              toll = 4.0
      else if (vehicle_class == "T" .or. vehicle_class == "t") then
              if (weight == "<") then
                      toll = 6.0
              else if (weight == ">") then
                      toll = 10.0
              else
                      print *, "Invalid weight"
              end if
      else
              print *, "Invalid vehicle class"
      end if

      !Print toll to be paid (if all entries were valid)
      if (toll > 0) then
              print "(a, f5.2)", "The toll is $", toll
      end if

end program toll_bridge
