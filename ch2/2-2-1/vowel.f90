program vowel
      !determines if input letter is a vowel or not
      implicit none

      !Variables: letter = input letter
      character :: letter

      !Read letter
      read *, letter
      print *, "Input data: letter = ", letter

      !Print whether vowel or consonant
      if (letter == "A" .or. letter == "E" .or. letter == "I" &
              .or. letter == "O" .or. letter == "U") then
              print *, "vowel"
      else
              print *, "consanant"
      end if

end program vowel
