program mean        !použití interní funkce pro výpočet průměru hodnot v poli
    implicit none
    real, dimension(4) :: v     !pole reálných čísel v se 4 prvky
    v = [8.0, 11.0, 9.0, 12.0]
    print *, mean_of(v)

    contains

    real function mean_of(x) result(average)        !deklaruje funkci s názvem mean_of, která vrací reálnou hodnotu. Funkce přijímá jeden argument x a návratová hodnota bude uložena do proměnné average
        implicit none
        real, dimension(:), intent(in) :: x     !dimension(:) znamená, že funkce může přijmout pole libovolné velikosti. intent(in) specifikuje, že argument x je pouze pro čtení a funkce ho nesmí modifikovat
        average = sum(x) / size(x)
    end function mean_of

end program mean
