program function_demo
    implicit none
    integer :: answer            !datový typ celá čísla :: answer - proměnná, do které se uloží výsledek funkce multiply
    answer = multiply(-10, 7)         !funkce se zavolá s argumenty -10 a 7, vypočítá výsledek (-70) a tento výsledek se přímo přiřadí do proměnné answer v hlavním programu
    print *, answer
    print *, multiply(-10, 7) +1      !toto ukazuje největší výhodu funkcí = můžu je vkládat přímo do matematických výrazů nebo příkazů print, program nejprve spustí funkci, získá výsledek -70, přičte k němu 1 a rovnou vypíše konečných -69

    contains

    integer function multiply(a,b) result(value)   !DEFINICE - zde vytvářím samotný "kalkulátor"
        implicit none
        integer, intent(in) :: a, b                !funkce je může pouze číst, ale nesmí je měnit
        value = a*b                                !výpočet - výsledek násobení se vloží do návratové proměnné value
    end function multiply

end program function_demo


!výsledek:   -70
!            -69

 
