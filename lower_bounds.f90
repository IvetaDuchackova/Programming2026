program lower_bounds
    implicit none 
    integer, dimension(-2:2) :: offset      !deklaruje celočíselné pole s názvem offset. Zápis (-2:2) definuje, že indexy pole jdou od -2 do 2. Pole má tedy celkem 5 prvků s indexy: -2, -1, 0, 1 a 2
    integer :: i 
    do i = lbound(offset, 1), ubound(offset, 1)     !funkce lbound zjistí dolní mez prvního rozměru (zde -2) a funkce ubound zjistí horní mez (zde 2). Cyklus tedy poběží od -2 do 2
        offset(i) = i * i
    end do 
    print *, offset
end program lower_bounds 
