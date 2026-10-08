program temp

    implicit none
      integer :: celsius, fahrenheit
      print *, "Temperature in Celsius"
      read *, celsius
      fahrenheit = (9 / 5) * celsius + 32
      print *, "Fahrenheit", fahrenheit

end program temp
