# Ext-Code-Review-1

1st Dec 2022.

Initial setup;
- Bundle install and init
- RSpec install and init
- Create blank app and blank test file

CLIENT BRIEF:

I work for school reports company
To help teachers find out how students do on tests
Goal is to convert String input of raw grades and output a frequency count per grade. Performed 1 time per string received.

Type of grades recieved (Green-Amber-Red)

Example String input:
"Green, Green, Red, Amber, Red"

Example String Output:
"Green: 2\nAmber: 1\nRed: 2"

Notes: 
0 counts should be omitted.
Capitalization blind
Mis-spelled grades should be counted as a separate count at end.

Feature 1: Split string into individual mark grades
Input string> Output> array of individual grades
Test: Receive 'Green-Green' Return ['Green','Green']

Feature 2: Count individual grades (just Greens)
Input string> Output> integer count of Greens
Test: Receive 'Green-Amber' Return 1

Feature3: Count individual grades (all)
Input string> Output> integer count of all grade types into array
Test: Receive 'Green-Amber' Return [1,1]

Feature4: Merge grade counts into array of strings
Input string> Output> String
Test: Receive 'Green-Amber' Return ['Green1', 'Amber1']

Feature5: Merge array of strings into correctly formatted output string
Input string> Output> String
Test: Receive 'Green-Amber' Return 'Green: 1\nAmber: 1'



