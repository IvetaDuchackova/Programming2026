program logical_example
    implicit none
    integer :: n
    logical :: valid, invalid

    print *, "Enter an integer:"
    read *, n

    valid = (n >= 0) .and. (n <= 200)
    invalid = (n < 0) .or. (n > 200)


    print *, valid
    print *, invalid
end program logical_example
