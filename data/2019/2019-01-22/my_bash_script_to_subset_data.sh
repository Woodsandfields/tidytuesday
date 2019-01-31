
#!/bin/bash

grep -i 'GA.*Jasper' pretrial_population.csv > my_data_subset.csv

echo "This program just created a dataset called my_data_subset.csv in your folder with all pretrial_population data for Jasper County, GA."

echo "Now, let's find a county in Alabama with similar characteristics to Jasper, GA and merge the data to have a dataset with two counties for pretrial population".

echo "Currently, the selection criteria are: total population under 9000 after 2000 and located in Alabama."

awk -F ',' '{if (($1>2000)&&($2=="AL")&&($7=="Total")&&($8<9000)) print $3;}' pretrial_population.csv | uniq > my_AL_preselec.csv

cat my_AL_preselec.csv

echo "Select a county to see its data. Write only the first name without 'County'"

read county 

grep AL pretrial_population.csv | grep $county

echo "Do you confirm you want to select this one? y/n"

read confirm

echo $confirm

if [ $confirm == "y" ]
then
echo "Let's then merge the data with "
else 
echo "Select a county again"
fi
