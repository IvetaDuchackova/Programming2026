program sum

    implicit none
        integer :: i, n, total

        print *, "enter a positive integer N"
        read *,n

        total = 0
        do i = 1, n
        total = total + i
        print *, i, total
        end do

      print*, "Sum", total

end program sum
