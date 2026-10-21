# Homework: Temperature Converter

## Compilation
`gfortran HW_less3_temp_conv.f90 -o HW_less3_temp_conv`

## Execution
`./HW_less3_temp_conv`

## Test Table

| Test Scenario | Choice | Temperature Input | Expected Output | Actual Output |
| :--- | :--- | :--- | :--- | :--- |
| Freezing point C to F | 1 | 0 | 32.0 | 32.0000000 |
| Normal value C to F | 1 | 50 | 122.0 | 122.000000 |
| Boiling point C to F | 1 | 100 | 212.0 | 212.000000 |
| Freezing point F to C | 2 | 32 | 0.0 | 0.0000000 |
| Boiling point F to C | 2 | 100 | 37.77... | 37.7777786 |
| Intersection F to C | 2 | -40 | -40.0 | -40.0000000 |
| Intersection C to F | 1 | -40 | -40.0 | -40.0000000 |
| Invalid menu choice | 7 | (None) | "Unknown choice." | Unknown choice. |
| Exit program | 0 | (None) | Program terminates | Returned to prompt |


--------------------------------------------------------------------------------------------------------------


iveta@LAPTOP-F4EDLO35:/mnt/c/Users/Iveta/data/homeworks$ gfortran HW_less3_temp_conv.f90 -o HW_less3_temp_conv

iveta@LAPTOP-F4EDLO35:/mnt/c/Users/Iveta/data/homeworks$ ./HW_less3_temp_conv

 Choice:
 1: Celsius to Fahrenheit
 2: Fahrenheit to Celsius
 0: Exit
1
 Enter temperature:
0
 Fahrenheit:   32.0000000    
  
 Choice:
 1: Celsius to Fahrenheit
 2: Fahrenheit to Celsius
 0: Exit
1
 Enter temperature:
50
 Fahrenheit:   122.000000    
  
 Choice:
 1: Celsius to Fahrenheit
 2: Fahrenheit to Celsius
 0: Exit
1
 Enter temperature:
100
 Fahrenheit:   212.000000    
  
 Choice:
 1: Celsius to Fahrenheit
 2: Fahrenheit to Celsius
 0: Exit
2
 Enter temperature:
32
 Celsius:   0.00000000    
  
 Choice:
 1: Celsius to Fahrenheit
 2: Fahrenheit to Celsius
 0: Exit
2
 Enter temperature:
100
 Celsius:   37.7777786    
  
 Choice:
 1: Celsius to Fahrenheit
 2: Fahrenheit to Celsius
 0: Exit
2
 Enter temperature:
-40
 Celsius:  -40.0000000    
  
 Choice:
 1: Celsius to Fahrenheit
 2: Fahrenheit to Celsius
 0: Exit
1
 Enter temperature:
-40
 Fahrenheit:  -40.0000000    
  
 Choice:
 1: Celsius to Fahrenheit
 2: Fahrenheit to Celsius
 0: Exit
7
 Unknown choice.
 Choice:
 1: Celsius to Fahrenheit
 2: Fahrenheit to Celsius
 0: Exit
0

iveta@LAPTOP-F4EDLO35:/mnt/c/Users/Iveta/data/homeworks$ 
