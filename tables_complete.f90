program tables
    implicit none
    integer :: n

do
    print *, "Size 1 to 5; 0 finishes"
    read *, n
    if (n == 0) exit
    if (n < 1 .or. n > 5) then
        print *, "Invalid size"
      else
        call print_table(n)
    end if
end do

contains
 
subroutine print_table(size)
    implicit none
    integer, intent(in) :: size
    integer :: i, j

    do i = 1, size
        do j = 1, size
        print *, i, j, multiply(i, j)
        end do
    end do
end subroutine print_table

integer function multiply(a, b) result(value)
    implicit none
    integer, intent(in) :: a, b
    value = a * b
end function multiply

end program tables



!výsledek:     Size 1 to 5; 0 finishes
!             1
!               1       1      1
!              Size 1 to 5; 0 finishes
!             2
!               1       1      1
!               1       2      2
!               2       1      2
!               2       2      4
!              Size 1 to 5; 0 finishes
!             3
!               1       1      1
!               1       2      2
!               1       3      3
!               2       1      2
!               2       2      4
!               2       3      6
!               3       1      3
!               3       2      6
!               3       3      9
