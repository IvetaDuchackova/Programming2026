program sentinel_loop             !vytvoření "nekonečného cyklu"
    implicit none
    integer :: n
    do
        print *, "Enter -10 to 10; 0 finishes:"    !program žádá uživatele, aby zadal číslo od -10 do 10, přičemž nula program ukončí, a zadanou hodnotu následně načte
        read *, n
        if (n == 0) exit                           !pokud uživatel zadá hodnotu 0, cyklus je pomocí příkazu exit okamžitě přerušen
        if (n >= -10 .and. n <= 10) then
            print *, "Square:", n*n                !pokud zadaná hodnota není nula, kód zkontroluje, zda leží v intervalu od -10 do +10. Pokud ano, vypočítá a vypíše její druhou mocninu (n*n)
        else
            print *, "Outside the allowed range."  !pokud uživatel zadá číslo mimo povolený interval, vypíše se upozornění "Outside the allowed range."
        end if
    end do
end program sentinel_loop


!výsledek:    Enter -10 to 10; 0 finishes:
!            5 
!             Square:           25
!             Enter -10 to 10; 0 finishes:
!            7
!             Square:           49
!             Enter -10 to 10; 0 finishes:
!            12
!             Outside the allowed range.
!             Enter -10 to 10; 0 finishes:
!           -80
!             Outside the allowed range.
!             Enter -10 to 10; 0 finishes:
!            0
