program dependent_inner_limit
    implicit none
    integer :: i, j
do i = 1, 3
    do j = 1, i            !opakování vnitřního cyklu není fixní, ale s každým kolem vnějšího cyklu se postupně prodlužuje 
        print *, i, j
    end do
end do

end program dependent_inner_limit


!  1   1
!  2   1
!  2   2
!  3   1
!  3   2
!  3   3
