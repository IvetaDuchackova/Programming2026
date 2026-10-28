program sum_of_squares_table
    implicit none 
    integer :: n

    do
        print *, "Enter a number from 1 to 5; 0 finishes:"
        read *, n
        if (n == 0) exit
        if (n >= 1 .and. n <= 5) then
            call print_squares(n)
         else
            print *, "Invalid input."
        end if
    end do

    call print_squares(n)

    contains

    subroutine print_squares(n)
        implicit none
        integer, intent(in) :: n
        integer :: i, j
        do i = 1, n
            do j = 1, n
                print *, i, j, sum_of_squares(i, j)
            end do
        end do 
    end subroutine print_squares

    integer function sum_of_squares(a, b)
        implicit none
        integer, intent(in) :: a, b
        sum_of_squares = a**2 + b**2
    end function sum_of_squares

    
end program sum_of_squares_table
