program demo       !tvorba a volání podprogramů (subroutines)
implicit none

call greet()       !"zastav se, najdi podprogram pojmenovaný "greet" a proveď vše, co je v něm napsáno"

contains           !oděluje logiku hlavního programu od definic jeho interních podprogramů - říká, že všechno pod tímto slovem jsou pomocné bloky kódu, které patří k hlavnímu programu

subroutine greet()   !"miniprogram" uvnitř hlavního programu
    implicit none
    print *, "Hello from the subroutine!"
end subroutine greet

end program demo

!výsledek: Hello from the subroutine!



!subroutine - nevrací výsledek přes svůj název, ale tím, že upraví hodnoty proměnných, které do ní pošlu jako argumenty
!musí se spouštět explicitně pomocí příkazu call

! X function - vrací výsledek přes svůj název, ale nemůže měnit hodnoty proměnných, používá se pro čisté matematické výpočty
