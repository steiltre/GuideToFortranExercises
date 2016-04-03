program new_jersey_population
      ! Displays the projected population of New Jersey and sq ft /
      ! person for every 10 years until sq ft / person < 100
      implicit none

      ! Variables: population = projected New Jersey population
      !            area_per_person = sq ft per person
      !            year = year
      ! Parameters: area = area of New Jersey
      integer (kind=16) :: population=7168192, year = 1980
      real :: area_per_person
      integer, parameter :: area = 7521 ! in square miles

      !Set up the table
      print "(a4, a14, a18)", "year", "population", "sq ft / person"

      !Update values and add to table
      do
        year = year + 10
        population = int(population * 1.18)
        area_per_person = real(area) / population * 5280 ** 2 ! in sq ft / person

        if (area_per_person < 100) then
                exit
        end if
        print "(i4, i14, f18.1)", year, population, area_per_person
      end do

end program new_jersey_population
