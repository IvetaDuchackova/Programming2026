iveta@LAPTOP-F4EDLO35:/mnt/c/Users/Iveta/data/homeworks$ gfortran HW_less3_safe_fact.f90 -o HW_less3_safe_fact

iveta@LAPTOP-F4EDLO35:/mnt/c/Users/Iveta/data/homeworks$ ./HW_less3_safe_fact

 Enter a non-negative integer N:
-11
 Invalid input. Try again.
 Enter a non-negative integer N:
0
 Factorial:                    1
 ------------------------
 Enter 1 for another calculation, 0 to exit:
1
  
 Enter a non-negative integer N:
4
 Factorial:                   24
 ------------------------
 Enter 1 for another calculation, 0 to exit:
1
  
 Enter a non-negative integer N:
16
 Factorial:       20922789888000
 ------------------------
 Enter 1 for another calculation, 0 to exit:
1
  
 Enter a non-negative integer N:
20
 Factorial:  2432902008176640000
 ------------------------
 Enter 1 for another calculation, 0 to exit:
1
  
 Enter a non-negative integer N:
21
 Factorial does not fit in 64-bit integer.
 ------------------------
 Enter 1 for another calculation, 0 to exit:
0
iveta@LAPTOP-F4EDLO35:/mnt/c/Users/Iveta/data/homeworks$ 




# TEST TABLE

| Test Scenario | Input (N) | Expected Output | Actual Output |
| :--- | :--- | :--- | :--- |
| Negative input (validation) | -11 | "Invalid input. Try again." | "Invalid input. Try again." |
| Lower boundary (0!) | 0 | 1 | 1 |
| Normal calculation (4!) | 4 | 24 | 24 |
| Normal calculation (16!) | 16 | 20922789888000 | 20922789888000 |
| Upper boundary for int64 (20!) | 20 | 2432902008176640000 | 2432902008176640000 |
| Overflow guard (21!) | 21 | "Factorial does not fit..." | Factorial does not fit in 64-bit integer. |
| Exit program | 0 (at choice prompt) | Program terminates | Returned to terminal prompt |
