program multiplication_entries
    implicit none
    integer :: i, j
do i = 1, 3
    do j = 1, 3
        print *, i, j, i*j
    end do
end do

end program multiplication_entries


!výsledek: 1   1   1
!          1   2   2
!          1   3   3
!          2   1   2
!          2   2   4
!          2   3   6
!          3   1   3
!          3   2   6
!          3   3   9
