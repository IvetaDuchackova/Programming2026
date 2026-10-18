program classify_sign
    implicit none
    integer :: n

    print *, "Enter an integer:"
    read *, n

    if (n > 0) then
        print *, "Positive."
    else if (n < 0) then
        print *, "Negative."
    else 
        print *, "Zero"
    end if

end program classify_sign 
