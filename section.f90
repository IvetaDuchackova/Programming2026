program section
    implicit none
    real, dimension(4) :: readings
    readings = [8.0, 11.0, 9.0, 12.0]
    print *, readings(2:4)      !zápis (2:4) říká, že se má vzít podřetězec prvků od indexu 2 do indexu 4 včetně. Na výstup se tedy vytisknou hodnoty druhého, třetího a čtvrtého prvku: 11.0, 9.0 a 12.0
    print *, readings(1:2)      !vybírá prvky od indexu 1 do indexu 2, výstupem budou první dvě hodnoty z pole: 8.0 a 11.0
end program section
