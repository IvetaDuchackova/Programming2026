program env

use iso_fortran_env, only:real32,real64
implicit none 
real(real32)::a
real(real64)::b
a =1.0_real32/3.0_real32
b =1.0_real64/3.0_real64
print*,a
print*,b

end program env
