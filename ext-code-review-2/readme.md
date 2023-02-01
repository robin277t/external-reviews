Provide a service to musicians
Filters to pass over their electronic music tracks
Band Pass filter > takes in a frequency and modifies upper and lower limits
Defualt low is 40Hz and upper is 1000Hz, user is able to make their own limits.

Input-Output table

Array of Frequencies  -- Array of Frequencies
Corrupt input > Always return error 
Input always be integers

Program Design:

Input is array of integers, 1- 44k~
Ouput is the same array of integers but modified; 
 - numbers below 40 are set to 40
 - numbers greater than 1000 are set to 1000
Any non-integer inputs and the program won't run and return an error message.
Stretch requirement- User defined limits input alongside input array like so [40,50,60],45,55 => [45,50,55]

Expected Test table (input => output)
[40] => [40]
[50,50] => [50,50]
[30,50] => [40,50]
[50,1200] => [50,1000]
[50.5,60] => error
["erfgefg"] => error
*[40,50,60],45,55 => [45,50,55]





