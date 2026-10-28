program factor_pairs

    implicit none 
    integer :: t

    do
        print *, "Enter target T (1 to 25); 0 finishes,"
        read *, t
        if (t == 0) exit
        if (t >= 1 .and. t <= 25) then
            call find_pairs(t)
        else 
            print *, "Invalid input."
        end if                  
    end do


    contains


    subroutine find_pairs(target)
        implicit none
        integer, intent(in) :: target
        integer :: i, j, match_count

    match_count = 0
        
        do i = 1, 5
            do j = 1, 5
                if (multiply(i, j) == target) then
                    print *, i, j
                    match_count = match_count + 1
                end if
            end do 
        end do
        !vezmeme dvě aktuální čísla i a j, pošle je do funkce multiply a zeptá se: "Rovná se výsledek našemu cíli (target)?". Pokud ano, vypíše tento pár na obrazovku a přičte 1 k počítadlu
        
        if (match_count == 0) then
            print *, "No pairs found."
        else
            print *, "Count:", match_count
        end if
    end subroutine find_pairs


    integer function multiply(a,b) result (value)
        implicit none
        integer, intent(in) :: a, b
        value = a * b
    end function multiply 


end program factor_pairs 



!výsledek:
! Enter target T (1 to 25); 0 finishes,
!1
!           1           1
! Count:           1
! Enter target T (1 to 25); 0 finishes,
!6
!           2           3
!           3           2
! Count:           2
! Enter target T (1 to 25); 0 finishes,
!7
! No pairs found.
! Enter target T (1 to 25); 0 finishes,
!25
!           5           5
! Count:           1
