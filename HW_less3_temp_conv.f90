program temperature_converter
  implicit none
  integer :: choice
  real :: temperature, result

  do
    print *, "Choice:"
    print *, "1: Celsius to Fahrenheit"
    print *, "2: Fahrenheit to Celsius"
    print *, "0: Exit"
    
    read *, choice

    if (choice == 0) exit  

    if (choice /= 1 .and. choice /= 2) then     
      print *, "Unknown choice."
      cycle     
    end if

    print *, "Enter temperature:"
    read *, temperature       

    if (choice == 1) then 
      result = (9.0 / 5.0) * temperature + 32.0
      print *, "Fahrenheit:", result    
    else if (choice == 2) then
      result = (5.0 / 9.0) * (temperature - 32.0)
      print *, "Celsius:", result        
    end if
    
    print *, " "    
  end do
  
end program temperature_converter
