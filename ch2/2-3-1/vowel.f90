program vowel
      !determines if input letter is a vowel or consonant
      implicit none

      !Variables  letter = input letter
      character :: letter

      !Read letter
      read *, letter

      !Print vowel, consonant, or error depending on input
      select case (letter)
      case ("a", "A", "e", "E", "i", "I", "o", "O", "u", "U")
              print *, "Vowel"
      case ("b":"d", "f":"h", "j":"n", "p":"t", "v":"z", &
                      "B":"D", "F":"H", "J":"N", "P":"T", "V":"Z")
              print *, "Consonant"
      case Default
              print *, "Error"
      end select

end program vowel
