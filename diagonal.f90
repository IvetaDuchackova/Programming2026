program diagonal_demo               !vytvoření diagonální matice
    implicit none
    integer, dimension(3) :: v      !jednorozměrné celočíselné pole (vektor) v o velikosti 3 prvků - toto pole bude obsahovat hodnoty pro diagonálu
    integer, dimension(3, 3) :: a   !dvourozměrné celočíselné pole (matice) a o velikosti 3 řádky a 3 sloupce
    integer :: i
    
    v = [4, -2, 7]                  !inicializuje vektor v zadanými hodnotami 4, -2 a 7
    
    a = 0
    
    do i = 1, ubound(v, 1)          !zahajuje cyklus, který běží od 1 do horní meze pole v (což je 3)
        a(i, i) = v(i)              !v každém kroku cyklu zapíše hodnotu z vektoru v(i) na hlavní diagonálu matice a. Diagonála je definována tím, že index řádku i sloupce je stejný (i, i). Prvek a(1,1) tak dostane hodnotu 4, a(2,2) hodnotu -2 a a(3,3) hodnotu 7
    end do
    
    do i = 1, ubound(a, 1)
        print *, a(i, :)
    end do
end program diagonal_demo
