program four_readings
    implicit none
    real, dimension(4) :: readings
    real :: base
    base = 8.0
    readings = [base, base + 3.0, 9.0, 12.0]        !ukazuje, že prvky pole mohou být nastaveny pomocí hodnoty z proměnné (base), výpočtem s proměnnou (base + 3.0) a také přímo zadanými hodnotami (9.0, 12.0)
    print *, readings
end program four_readings
