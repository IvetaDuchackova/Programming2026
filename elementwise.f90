program elementwise
    implicit none
    integer, dimension(3) :: a, b, c
    a = [1, 2, 3]
    b = [10, 20, 30]
    c = a + b
    print *, c      !vypíše: 11, 22, 33
    c = 10 * c
    print *, c      !vypíše: 110, 220, 330
end program elementwise
