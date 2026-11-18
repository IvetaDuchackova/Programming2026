program rows_columns_shape
    implicit none
    integer, dimension(2,3) :: a
    integer :: i
    
    a = 0           !přiřadí hodnotu 0 všem prvkům v celém poli najednou
    a(2,3) = 7      !přistoupí ke konkrétnímu prvku ve 2. řádku a 3. sloupci a nastaví jeho hodnotu na 7
    
    do i = 1, ubound(a,1)   !proměnná i jde od 1 do horní meze prvního rozměru pole a (tedy počtu řádků, což je 2), funkce ubound(a,1) bezpečně vrací hodnotu 2
        print *, a(i, :)    !klíčový řádek pro formátovaný výpis matice: pomocí zápisu a(i, :) program vybírá celý i-tý řádek. Dvojtečka : zde funguje jako zástupný znak znamenající "všechny prvky v daném rozměru" (tedy všechny sloupce v aktuálním řádku)
    end do
end program rows_columns_shape
