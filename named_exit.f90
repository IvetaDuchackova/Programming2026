program named_exit
    implicit none
    integer :: i, j
    search: do i = 1, 3     !search = pojmenování vnějšího cyklu
     do j = 1, 3
        if (i*j == 6) then
            print *, "Found:", i, j
            exit search
        end if
     end do
    end do search
end program named_exit

!jakmile program najde první kombinaci čísel se součinem 6, vypíše do konzole zprávu "Found:" následovanou těmito dvěma čísly

!výsledek:     Found:    2    3
