program allocate        !deklarovace pole bez pevně dané velikosti, alokace paměti, výpočet hodnot, uvolnění paměti
    implicit none
    integer, dimension(:), allocatable :: v     !celočíselné pole, jehož velikost bude určena až za běhu programu
    integer :: n, i     !dvě standardní celočíselné proměnné: n bude sloužit k určení velikosti pole a i jako iterátor cyklu
    n = 3
    allocate(v(n))      !vyhrazuje v paměti prostor pro pole v o velikosti n (tedy pro 3 prvky)
    do i = 1, n
        v(i) = i * i
    end do
    print *, v
    deallocate(v)       !uvolňuje paměť dříve alokovanou pro pole v, tento krok je velmi důležitý pro zamezení únikům paměti
end program allocate
