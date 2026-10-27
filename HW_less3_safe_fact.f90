program safe_factorial
  use iso_fortran_env, only: int64
  implicit none
  integer :: n, i, repeat_choice
  integer(int64) :: factorial
  logical :: overflow

  !hlavní vnější cyklus umožňující opakované výpočty
  do
    !ošetření vstupu (přijme pouze N >= 0)
    do
      print *, "Enter a non-negative integer N:"
      read *, n
      if (n >= 0) exit
      print *, "Invalid input. Try again."
    end do

    !inicializace před výpočtem
    factorial = 1_int64
    overflow = .false.

    !výpočet faktoriálu s ochranou (guard) před každým násobením
    do i = 1, n
      !pokud by další násobení přesáhlo limit, zastavíme výpočet
      if (factorial > huge(factorial) / i) then
        overflow = .true.
        exit
      end if
      !bezpečné násobení
      factorial = factorial * i
    end do

    !vypsání výsledku podle toho, jak výpočet dopadl
    if (overflow) then
      print *, "Factorial does not fit in 64-bit integer."
    else
      print *, "Factorial:", factorial
    end if

    print *, "------------------------"
    
    !umožnění dalšího výpočtu
    print *, "Enter 1 for another calculation, 0 to exit:"
    read *, repeat_choice
    
    if (repeat_choice == 0) exit
    print *, " "
  end do

end program safe_factorial
