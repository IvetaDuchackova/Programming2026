program fixed_readings
    implicit none
    real, dimension(4) :: readings
    integer :: i
    readings = [8.0, 11.0, 9.0, 12.0]
    do i = 1, ubound(readings, 1)       !zahajuje cyklus, kde se řídící proměnná i postupně mění od hodnoty 1 až po horní mez prvního rozměru pole readings. Tuto mez zjišťuje vestavěná funkce ubound, která pro toto pole vrátí hodnotu 4
        print *, i, readings(i)
    end do
end program fixed_readings
