
#!/bin/bash

grep -i 'GA.*Jasper' pretrial_population.csv > my_data_subset.csv


awk -F ',' '{if (($1>2000)&&($2=="AL")&&($7=="Total")&&($8<9000)&&) print $3;}' pretrial_population.csv | uniq > my_AL_preselec.csv

cat my_AL_preselec.csv

echo "Select a county to see its data. Write only the first name without 'County'"

read county 

grep AL pretrial_population.csv | grep $county

echo "Do you confirm you want to select this one? Y/N"

read confirm

echo $confirm

if [$confirm -eq "y"]
then
echo "I got you"

fi
