program accumulator_arr     !ukazuje dva způsoby, jak sečíst hodnoty v poli (vytvořit takzvaný akumulátor) a jak následně z těchto hodnot vypočítat průměr
    implicit none 
    real, dimension(4) :: readings      !jednorozměrné pole reálných čísel s názvem readings, které má přesně 4 prvky
    real :: total, average      !dvě reálné proměnné total (pro uložení součtu) a average (pro uložení průměru)
    integer :: i
    readings = [8.0, 11.0, 9.0, 12.0]
    total = 0.0     !stanovení poočáteční hodnoty součtu na 0, klíčový krok před zahájením sčítání v cyklu
    do i = 1, ubound(readings, 1)       !proměnná i jde od 1 do horní meze prvního rozměru pole readings, což je v tomto případě 4 (zjištěno pomocí funkce ubound)
        total = total + readings(i)
    end do
    print *, total
    total = sum(readings)       !druhý způsob jak získat součet
    average = total / size(readings)        !průměr
    print *, total, average
end program accumulator_arr
