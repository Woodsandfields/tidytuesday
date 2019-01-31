
#!/bin/bash


###############################
#Getting first dataset subset #
###############################

grep -i 'GA.*Jasper' pretrial_population.csv > my_data_subset.csv


echo "***********"
echo "This program just created a dataset called my_data_subset.csv in your folder with all pretrial_population data for Jasper County, GA. This file's detail for its number of lines, words, and characters is:"

cat my_data_subset.csv | wc 

echo "(press 'Enter' to continue)"
read keyboard

echo "***********"
echo "Now, let's find a county in Alabama with similar characteristics to Jasper, GA and merge the data to have a dataset with two counties for pretrial population".
echo "***********"
echo "Currently, the selection criteria are: total population under 9000 after 2000 and located in Alabama."
echo "***********"
echo "(press 'Enter' to continue)"
read keyboard

awk -F ',' '{if (($1>2000)&&($2=="AL")&&($7=="Total")&&($8<9000)) print $3;}' pretrial_population.csv | uniq > my_AL_preselec.csv

cat my_AL_preselec.csv


############## Select a county ###########################

echo "Select a county to see its data. Write only the first name without 'County'"

read county 

grep AL pretrial_population.csv | grep -i $county > second_county.csv 

#cat second_county.csv



awk -F ',' '{print $4;}' second_county.csv | uniq > county_type.txt

county_type=$(cut -d, -f1 county_type.txt)

echo "$county County is said to be $county_type."


################ Accessing all county data if wanted #################
echo "Do you want to see all the data for $county County? y/n"
read confirm

if [ $confirm == "y" ]
then
cat second_county.csv
else 
echo "Let's move on then."
fi

############## Confirm selection #####################
echo "Do you confirm you want to select this one? y/n"
read confirm
echo $confirm

if [ $confirm == "y" ]
then
echo "Let's then add this county's data to my_data_subset.csv"
cat second_county.csv >> my_data_subset.csv 
echo "my_data_subset.csv is the new dataset you can work on. It contains all pretrial_population data for the 2 counties of Jasper, GA and $county, AL. Its total number of lines is:"
wc -l < my_data_subset.csv 	 
else 
echo "Then run the program again to select another one."
fi


rm second_county.csv 
rm my_AL_preselec.csv 
rm county_type.txt 