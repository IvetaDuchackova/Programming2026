program safe_division
    implicit none
    real :: numerator, denominator, result

    print *, "Enter numerator and denuminator:"

    read *, numerator, denominator

    if (denominator == 0.0) then 
        print *, "Cannot divide by zero."
    else
        result = numerator / denominator
        print *, "Result", result
    end if

end program safe_division
