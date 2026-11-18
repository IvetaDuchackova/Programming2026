program nested_matrix_loops
    implicit none
    integer, dimension(2,3) :: a        !deklaruje dvourozměrné pole celých čísel (matici) s názvem a, které se skládá ze 2 řádků a 3 sloupců
    integer :: i,j                      !deklaruje celočíselné proměnné i a j
    
    do i =1, ubound(a,1)                !zahajuje vnější cyklus pro iteraci přes řádky matice. Proměnná i se mění od 1 do horní meze prvního rozměru pole, což je počet řádků zjistitelný pomocí funkce ubound(a,1)
        do j=1, ubound(a,2)             !zahajuje vnitřní cyklus pro iteraci přes sloupce v aktuálním řádku. Proměnná j se mění od 1 do horní meze druhého rozměru
            a(i,j) = i*j
        end do
    end do
    
    do i = 1, ubound(a,1)               !zahajuje nový samostatný cyklus pro výpis matice
        print *, a(i, :)                !vytiskne celý i-tý řádek matice najednou. Využívá se zde : (slicing), který říká Fortranu, aby vypsal všechny prvky ve druhém rozměru (všechny sloupce) pro daný řádek i
    end do
end program nested_matrix_loops

!jak používat vnořené cykly (nested loops) k procházení a naplnění vícerozměrného pole (matice) vypočítanými hodnotami a jak tuto matici následně naformátovaně vypsat
