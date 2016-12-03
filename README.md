# Elementary-cellular-automaton
Matlab script for displaying result of ECA on an input list


### Example use
Parameters are the rule, a 1D array and the number of rows.

Rule 110 200x200 :
```
a = zeros(1, 200);
a(100) = 1;
ECA(110, a, 200);
```
![alt text](rule-110-example.png "200x200 Rule 110")

Rule 126 254x127 :
```
a = zeros(1, 254);
a(127) = 1;
ECA(126, a, 127);
```
![alt text](rule-126-example.png "254x127 Rule 126")

Rule 184 500x500 :
```
a = round(rand(1, 500));
ECA(184, a, 500);
```
![alt text](rule-184-example.png "500x500 Rule 184")
