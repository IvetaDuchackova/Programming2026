program element_and_array
    implicit none
    real, dimension(4) :: readings      !deklaruje jednorozměrné pole reálných čísel s názvem readings, které obsahuje přesně 4 prvky
    readings = [8.0, 11.0, 9.0, 12.0]
    readings(2) = 10.0      !upravuje pouze jeden konkrétní prvek v poli. V tomto případě se druhý prvek pole (který měl hodnotu 11.0) přepíše na hodnotu 10.0
    print *, readings
    readings = 0.0
    print *, readings
end program element_and_array
