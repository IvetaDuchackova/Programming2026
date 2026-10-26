program nested_loops
    implicit none
    integer :: i, j
do i = 1, 2             
    do j = 1, 3         
        print *, i, j
    end do
end do

end program nested_loops



!vypíše dvojice 1-1, 1-2, 1-3; 2-1, 2-2, 2-3
