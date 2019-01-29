
library("data.table")
library("tidyr")
library("dplyr")

#UNCOMMENT NEXT LINE WHEN NEED TO LOAD DATA AGAIN, RUN TWICE IF NECESSARY

#my_df <- read.table("pretrial_population.csv", sep=",")


#summary(my_df)

#print(my_df[1:3,])


#use the first row as the column titles

colnames(my_df) <- unname(unlist(my_df[1,]))
#print(colnames(my_df))
#print(my_df[1:3,])

beechum_jasper <- my_df %>%
        select(county_name) %>%
        filter(county_name %in% c("Autauga County", "Ada County"))
print(beechum_jasper)
print(my_df$county_name[1:30])