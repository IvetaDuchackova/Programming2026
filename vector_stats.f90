program vector_stats
    implicit none
    real, dimension(:), allocatable :: v     
    integer :: n, i

    do
        print *, "How many readings (1 to 20)?"
        read *, n
        if (n >= 1 .and. n <=20) exit
        print *, "Choose a length between 1 and 20"
    end do

    allocate(v(n))      !jakmile je známá platná velikost n, program vyhradí (alokuje) paměť pro pole v o velikosti n prvků

    do i = 1, ubound(v, 1)
        print *, "Reading", i
        read *, v(i)
    end do

    print *, "Minimum:", minval(v)
    print *, "Maximum:", maxval(v)
    print *, "Mean:", meanof(v)
    print *, "First maximum at:", maxloc(v, dim=1)      !vestavěná funkce, která vrátí pozici (index), na které se nachází maximální hodnota (vyhledává se podél prvního rozměru dim=1)

    deallocate(v)       !uvolní paměť vyhrazenou pro pole v

    contains
    real function meanof(x) result(average)
        implicit none
        real, dimension(:), intent(in) :: x
        average = sum(x) / size(x)      !efektivně sečte všechny hodnoty a vydělí je celkovým počtem prvků pole, výsledek se uloží do návratové proměnné average
    end function meanof

end program vector_stats
