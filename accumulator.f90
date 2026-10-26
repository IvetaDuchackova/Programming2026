program accumulator
    implicit none
    integer :: i, j, total
    do i = 1, 3
        total = 0
        do j = 1, 3
            total = total + i*j
        end do
        print *, i, total
    end do
end program accumulator



!!cílem je spočítat celkový součet několika hodnot, kdy pro každé nové kolo vnějšího cyklu se počítá zcela nový, nezávislý součet

!výsledek:  1   6
!                   total = 0, j = 1, total = 0 + 1*1 = 1
!                   total = 1, j = 2, total = 1 + 1*2 = 3
!                   total = 3, j = 3, total = 3 + 1*3 = 6
!           2   12
!                   total = 0, j = 1, total = 0 + 2*1 = 2
!                   total = 2, j = 2, total = 2 + 2*2 = 6
!                   total = 6, j = 3, total = 6 + 2*3 = 12
!           3   18
!                   total = 0, j = 1, total = 0 + 3*1 = 3
!                   total = 3, j = 2, total = 3 + 3*2 = 9
!                   total = 9, j = 3, total = 9 + 3*3 = 18
