program inner_exit
    implicit none
    integer :: i, j
    do i= 1, 3
        do j = 1, 3
            if (j==2)exit    !říká: zkontroluj aktuální hodnotu j a pokud se rovná 2, okamžitě vyskoč z tohoto vnitřního cyklu
            print *, i, j
        end do
    end do
end program inner_exit


!příkaz exit -> předčasné ukončení cyklu na základě určité podmínky
!výsledek:  1   1
!           2   1
!           3   1
!   příkaz exit "odstřihl" všechny kroky, kde je j větší nebo rovno 2
