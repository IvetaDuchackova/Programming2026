program matrix_columns_total
    implicit none
    integer, dimension(2,3) :: a        !deklaruje celočíselnou matici a o rozměrech 2 řádky a 3 sloupce
    integer :: i, j
    
    do i = 1, ubound(a,1)
        do j = 1, ubound(a,2)
            a(i,j) = i*j
        end do
    end do
    !pomocí vnořených cyklů projde celou matici a do každého prvku a(i,j) uloží součin jeho indexů (i*j). Horní meze se dynamicky zjišťují pomocí ubound
    
    call print_column_totals(a)
    !zavolá subrutinu print_column_totals a předá jí celou matici a jako argument

    contains

    subroutine print_column_totals(m)       !definuje začátek subrutiny s jedním vstupním argumentem pojmenovaným m
        implicit none
        integer, dimension(:,:), intent(in) :: m    !deklaruje vstupní argument m. Zápis dimension(:,:) (takzvané assumed-shape pole) znamená, že subrutina přijme dvourozměrnou matici jakýchkoliv rozměrů, čímž se stává univerzální. intent(in) zajišťuje, že subrutina nesmí matici m modifikovat (je pouze pro čtení)
        integer :: j        !lokální proměnná j pro cyklus uvnitř subrutiny
        
        do j = 1, ubound(m,2)       !zahajuje cyklus, který projde všechny sloupce předané matice m (pomocí zjištění horní meze druhého rozměru)
            print *, j, sum(m(:,j))     !KLÍČOVÝ KROK: pro každý sloupec vytiskne jeho index j a následně součet všech jeho prvků. Využívá k tomu výřez m(:,j), který představuje celý j-tý sloupec, a předá ho vestavěné funkci sum, která jej sečte
        end do
    end subroutine print_column_totals
    
end program matrix_columns_total
