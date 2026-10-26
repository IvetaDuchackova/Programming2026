program powers_demo
    implicit none
    integer :: a, b

call powers(3, a, b)     !volám podprogram s názvem powers a předávám mu tři argumenty: konkrétní číslo 3 (to, co chci umocňovat) a mé dvě proměnné a a b 
print *, a, b

contains 

subroutine powers(n, squared, cubed)   !hlavička podprogramu definuje, že očekává tři parametry -> číslo 3 se uvnitř podprogramu načte do proměnné n, proměnná a se propojí se squared a proměnná b s cubed
    implicit none
    integer, intent(in) :: n                  !slouží jako ochrana - říká kompilátoru, že parametr n přichází do podprogramu pouze pro čtení (jako vstup) a nesmí být uvnitř nijak změněn
    integer, intent(out) :: squared, cubed    !uvnitř podprogramu se spočítá druhá mocnina (squared = n*n) a třetí mocnina (cubed = n*n*n)
    squared = n*n
    cubed = n*n*n
end subroutine powers

end program powers_demo


!výsledek:   9   27 
