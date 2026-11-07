program array_bounds
    implicit none
    real, dimension(-2, 2) :: offset    !pole reálných čísel (real) s názvem offset, dimension nastavuje hranice indexů pole (horní mez, dolní mez)
    print *, lbound(offset, 1)      !vytiskne dolní mez (lower bound) prvního rozměru pole offset, výstupem by mělo být číslo -2
    print *, ubound(offset, 1)    !vytiskne horní mez (upper bound) prvního rozměru pole offset, výstupem by mělo být číslo 2
    print *, size(offset)       !vytiskne celkovou velikost pole (tedy počet prvků), v tomto případě (od -2 do 2) je to 5
end program array_bounds
