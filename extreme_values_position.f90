program extreme_values_position
    implicit none
    real, dimension(4) :: readings
    readings = [8.0, 11.0, 9.0, 12.0]

    print *, minval(readings), maxval(readings)     !vypíše na obrazovku nejmenší a největší hodnotu v poli. K tomu využívá vestavěné funkce minval (vrátí 8.0) a maxval (vrátí 12.0)
    print *, minloc(readings), maxloc(readings)     !vypíše pozici (index) těchto extrémních hodnot. Funkce minloc najde index prvku s nejmenší hodnotou (vrátí pozici 1) a maxloc najde index prvku s největší hodnotou (vrátí pozici 4)
    print *, minval(readings, dim=1)        !znovu hledá minimální hodnotu, ale tentokrát explicitně určuje, že se má hledat podél prvního rozměru pomocí argumentu dim=1. Pro jednorozměrné pole je výsledek stejný jako na řádku 6, ale toto použití je velmi důležité u vícerozměrných polí (matic)
    print *, maxval(readings, dim=1)

end program extreme_values_position
