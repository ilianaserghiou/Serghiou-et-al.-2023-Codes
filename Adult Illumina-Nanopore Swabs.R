library("dplyr")
library(dplyr, mask.ok = list(stats = c("filter", "lag"),
                              base = c("intersect", "setdiff",
                                       "setequal", "union")))
library("readr")
#install.packages("tidyverse")
library("tidyverse")
#install.packages("reshape2")
library("reshape2")

# Set the working directory to import the data
setwd("C:/Users/serghioi/Documents/QIB/PhD - Development and Evolution Of The Infant Skin Microbiome/Data Collection/DNA Extrac. Method Development/Data Plots/Promega Maxwell FMH Volunteer Swabs Extraction Run 4/Illumina Swab vs Nanopore Swab")

###################################################################################################

# Import the csv file.
Volunteer_1_Swab_1_Illumina <- read_csv("0739-1.csv")
# Select only the "name" and "fraction_total_reads" columns.
Volunteer_1_Swab_1_Illumina <- Volunteer_1_Swab_1_Illumina %>% select(name, fraction_total_reads)
# Rename the "fraction_total_reads" column as the sample Id name.
names(Volunteer_1_Swab_1_Illumina)[names(Volunteer_1_Swab_1_Illumina) == "fraction_total_reads"] <- "Volunteer_1_Swab_1_Illumina"

# Repeat with other CSV files
Volunteer_1_Swab_2_Illumina <- read_csv("0739-2.csv")
Volunteer_1_Swab_2_Illumina <- Volunteer_1_Swab_2_Illumina %>% select(name, fraction_total_reads)
names(Volunteer_1_Swab_2_Illumina)[names(Volunteer_1_Swab_2_Illumina) == "fraction_total_reads"] <- "Volunteer_1_Swab_2_Illumina"

Volunteer_2_Swab_1_Illumina <- read_csv("0739-3.csv")
Volunteer_2_Swab_1_Illumina <- Volunteer_2_Swab_1_Illumina %>% select(name, fraction_total_reads)
names(Volunteer_2_Swab_1_Illumina)[names(Volunteer_2_Swab_1_Illumina) == "fraction_total_reads"] <- "Volunteer_2_Swab_1_Illumina"

Volunteer_2_Swab_2_Illumina <- read_csv("0739-4.csv")
Volunteer_2_Swab_2_Illumina <- Volunteer_2_Swab_2_Illumina %>% select(name, fraction_total_reads)
names(Volunteer_2_Swab_2_Illumina)[names(Volunteer_2_Swab_2_Illumina) == "fraction_total_reads"] <- "Volunteer_2_Swab_2_Illumina"

Volunteer_3_Swab_1_Illumina <- read_csv("0739-5.csv")
Volunteer_3_Swab_1_Illumina <- Volunteer_3_Swab_1_Illumina %>% select(name, fraction_total_reads)
names(Volunteer_3_Swab_1_Illumina)[names(Volunteer_3_Swab_1_Illumina) == "fraction_total_reads"] <- "Volunteer_3_Swab_1_Illumina"

Volunteer_3_Swab_2_Illumina <- read_csv("0739-6.csv")
Volunteer_3_Swab_2_Illumina <- Volunteer_3_Swab_2_Illumina %>% select(name, fraction_total_reads)
names(Volunteer_3_Swab_2_Illumina)[names(Volunteer_3_Swab_2_Illumina) == "fraction_total_reads"] <- "Volunteer_3_Swab_2_Illumina"

Volunteer_4_Swab_1_Illumina <- read_csv("0739-7.csv")
Volunteer_4_Swab_1_Illumina <- Volunteer_4_Swab_1_Illumina %>% select(name, fraction_total_reads)
names(Volunteer_4_Swab_1_Illumina)[names(Volunteer_4_Swab_1_Illumina) == "fraction_total_reads"] <- "Volunteer_4_Swab_1_Illumina"

Volunteer_4_Swab_2_Illumina <- read_csv("0739-8.csv")
Volunteer_4_Swab_2_Illumina <- Volunteer_4_Swab_2_Illumina %>% select(name, fraction_total_reads)
names(Volunteer_4_Swab_2_Illumina)[names(Volunteer_4_Swab_2_Illumina) == "fraction_total_reads"] <- "Volunteer_4_Swab_2_Illumina"

Volunteer_5_Swab_1_Illumina <- read_csv("0739-9.csv")
Volunteer_5_Swab_1_Illumina <- Volunteer_5_Swab_1_Illumina %>% select(name, fraction_total_reads)
names(Volunteer_5_Swab_1_Illumina)[names(Volunteer_5_Swab_1_Illumina) == "fraction_total_reads"] <- "Volunteer_5_Swab_1_Illumina"

Volunteer_5_Swab_2_Illumina <- read_csv("0739-10.csv")
Volunteer_5_Swab_2_Illumina <- Volunteer_5_Swab_2_Illumina %>% select(name, fraction_total_reads)
names(Volunteer_5_Swab_2_Illumina)[names(Volunteer_5_Swab_2_Illumina) == "fraction_total_reads"] <- "Volunteer_5_Swab_2_Illumina"

Volunteer_6_Swab_1_Illumina <- read_csv("0739-11.csv")
Volunteer_6_Swab_1_Illumina <- Volunteer_6_Swab_1_Illumina %>% select(name, fraction_total_reads)
names(Volunteer_6_Swab_1_Illumina)[names(Volunteer_6_Swab_1_Illumina) == "fraction_total_reads"] <- "Volunteer_6_Swab_1_Illumina"

Volunteer_6_Swab_2_Illumina <- read_csv("0739-12.csv")
Volunteer_6_Swab_2_Illumina <- Volunteer_6_Swab_2_Illumina %>% select(name, fraction_total_reads)
names(Volunteer_6_Swab_2_Illumina)[names(Volunteer_6_Swab_2_Illumina) == "fraction_total_reads"] <- "Volunteer_6_Swab_2_Illumina"

Volunteer_7_Swab_1_Illumina <- read_csv("0739-13.csv")
Volunteer_7_Swab_1_Illumina <- Volunteer_7_Swab_1_Illumina %>% select(name, fraction_total_reads)
names(Volunteer_7_Swab_1_Illumina)[names(Volunteer_7_Swab_1_Illumina) == "fraction_total_reads"] <- "Volunteer_7_Swab_1_Illumina"

Volunteer_7_Swab_2_Illumina <- read_csv("0739-14.csv")
Volunteer_7_Swab_2_Illumina <- Volunteer_7_Swab_2_Illumina %>% select(name, fraction_total_reads)
names(Volunteer_7_Swab_2_Illumina)[names(Volunteer_7_Swab_2_Illumina) == "fraction_total_reads"] <- "Volunteer_7_Swab_2_Illumina"

Volunteer_8_Swab_1_Illumina <- read_csv("0739-15.csv")
Volunteer_8_Swab_1_Illumina <- Volunteer_8_Swab_1_Illumina %>% select(name, fraction_total_reads)
names(Volunteer_8_Swab_1_Illumina)[names(Volunteer_8_Swab_1_Illumina) == "fraction_total_reads"] <- "Volunteer_8_Swab_1_Illumina"

Volunteer_8_Swab_2_Illumina <- read_csv("0720-16.csv")
Volunteer_8_Swab_2_Illumina <- Volunteer_8_Swab_2_Illumina %>% select(name, fraction_total_reads)
names(Volunteer_8_Swab_2_Illumina)[names(Volunteer_8_Swab_2_Illumina) == "fraction_total_reads"] <- "Volunteer_8_Swab_2_Illumina"

Volunteer_9_Swab_1_Illumina <- read_csv("0739-17.csv")
Volunteer_9_Swab_1_Illumina <- Volunteer_9_Swab_1_Illumina %>% select(name, fraction_total_reads)
names(Volunteer_9_Swab_1_Illumina)[names(Volunteer_9_Swab_1_Illumina) == "fraction_total_reads"] <- "Volunteer_9_Swab_1_Illumina"

Volunteer_9_Swab_2_Illumina <- read_csv("0739-18.csv")
Volunteer_9_Swab_2_Illumina <- Volunteer_9_Swab_2_Illumina %>% select(name, fraction_total_reads)
names(Volunteer_9_Swab_2_Illumina)[names(Volunteer_9_Swab_2_Illumina) == "fraction_total_reads"] <- "Volunteer_9_Swab_2_Illumina"

Volunteer_10_Swab_1_Illumina <- read_csv("0720-19.csv")
Volunteer_10_Swab_1_Illumina <- Volunteer_10_Swab_1_Illumina %>% select(name, fraction_total_reads)
names(Volunteer_10_Swab_1_Illumina)[names(Volunteer_10_Swab_1_Illumina) == "fraction_total_reads"] <- "Volunteer_10_Swab_1_Illumina"

Volunteer_10_Swab_2_Illumina <- read_csv("0739-20.csv")
Volunteer_10_Swab_2_Illumina <- Volunteer_10_Swab_2_Illumina %>% select(name, fraction_total_reads)
names(Volunteer_10_Swab_2_Illumina)[names(Volunteer_10_Swab_2_Illumina) == "fraction_total_reads"] <- "Volunteer_10_Swab_2_Illumina"

Volunteer_11_Swab_1_Illumina <- read_csv("0720-21.csv")
Volunteer_11_Swab_1_Illumina <- Volunteer_11_Swab_1_Illumina %>% select(name, fraction_total_reads)
names(Volunteer_11_Swab_1_Illumina)[names(Volunteer_11_Swab_1_Illumina) == "fraction_total_reads"] <- "Volunteer_11_Swab_1_Illumina"

Volunteer_11_Swab_2_Illumina <- read_csv("0720-22.csv")
Volunteer_11_Swab_2_Illumina <- Volunteer_11_Swab_2_Illumina %>% select(name, fraction_total_reads)
names(Volunteer_11_Swab_2_Illumina)[names(Volunteer_11_Swab_2_Illumina) == "fraction_total_reads"] <- "Volunteer_11_Swab_2_Illumina"

Volunteer_12_Swab_1_Illumina <- read_csv("0739-23.csv")
Volunteer_12_Swab_1_Illumina <- Volunteer_12_Swab_1_Illumina %>% select(name, fraction_total_reads)
names(Volunteer_12_Swab_1_Illumina)[names(Volunteer_12_Swab_1_Illumina) == "fraction_total_reads"] <- "Volunteer_12_Swab_1_Illumina"

Volunteer_12_Swab_2_Illumina <- read_csv("0720-24.csv")
Volunteer_12_Swab_2_Illumina <- Volunteer_12_Swab_2_Illumina %>% select(name, fraction_total_reads)
names(Volunteer_12_Swab_2_Illumina)[names(Volunteer_12_Swab_2_Illumina) == "fraction_total_reads"] <- "Volunteer_12_Swab_2_Illumina"

Positive_Control_1_Illumina <- read_csv("0720-Pos-Con-1.csv")
Positive_Control_1_Illumina <- Positive_Control_1_Illumina %>% select(name, fraction_total_reads)
names(Positive_Control_1_Illumina)[names(Positive_Control_1_Illumina) == "fraction_total_reads"] <- "Positive_Control_1_Illumina"

Positive_Control_2_Illumina <- read_csv("0720-Pos-Con-2.csv")
Positive_Control_2_Illumina <- Positive_Control_2_Illumina %>% select(name, fraction_total_reads)
names(Positive_Control_2_Illumina)[names(Positive_Control_2_Illumina) == "fraction_total_reads"] <- "Positive_Control_2_Illumina"

Positive_Control_3_Illumina <- read_csv("0720-Pos-Con-3.csv")
Positive_Control_3_Illumina <- Positive_Control_3_Illumina %>% select(name, fraction_total_reads)
names(Positive_Control_3_Illumina)[names(Positive_Control_3_Illumina) == "fraction_total_reads"] <- "Positive_Control_3_Illumina"

Positive_Control_4_Illumina <- read_csv("0720-Pos-Con-4.csv")
Positive_Control_4_Illumina <- Positive_Control_4_Illumina %>% select(name, fraction_total_reads)
names(Positive_Control_4_Illumina)[names(Positive_Control_4_Illumina) == "fraction_total_reads"] <- "Positive_Control_4_Illumina"

Negative_Control_Illumina <- read_csv("0720-Neg-Con.csv")
Negative_Control_Illumina <- Negative_Control_Illumina %>% select(name, fraction_total_reads)
names(Negative_Control_Illumina)[names(Negative_Control_Illumina) == "fraction_total_reads"] <- "Negative_Control_Illumina"

Volunteer_1_Swab_2_Nanopore <- read_csv("0747-2.csv")
Volunteer_1_Swab_2_Nanopore <- Volunteer_1_Swab_2_Nanopore %>% select(name, fraction_total_reads)
names(Volunteer_1_Swab_2_Nanopore)[names(Volunteer_1_Swab_2_Nanopore) == "fraction_total_reads"] <- "Volunteer_1_Swab_2_Nanopore"

Volunteer_3_Swab_1_Nanopore <- read_csv("0747-5.csv")
Volunteer_3_Swab_1_Nanopore <- Volunteer_3_Swab_1_Nanopore %>% select(name, fraction_total_reads)
names(Volunteer_3_Swab_1_Nanopore)[names(Volunteer_3_Swab_1_Nanopore) == "fraction_total_reads"] <- "Volunteer_3_Swab_1_Nanopore"

Volunteer_3_Swab_2_Nanopore <- read_csv("0747-6.csv")
Volunteer_3_Swab_2_Nanopore <- Volunteer_3_Swab_2_Nanopore %>% select(name, fraction_total_reads)
names(Volunteer_3_Swab_2_Nanopore)[names(Volunteer_3_Swab_2_Nanopore) == "fraction_total_reads"] <- "Volunteer_3_Swab_2_Nanopore"

Volunteer_4_Swab_1_Nanopore <- read_csv("0747-7.csv")
Volunteer_4_Swab_1_Nanopore <- Volunteer_4_Swab_1_Nanopore %>% select(name, fraction_total_reads)
names(Volunteer_4_Swab_1_Nanopore)[names(Volunteer_4_Swab_1_Nanopore) == "fraction_total_reads"] <- "Volunteer_4_Swab_1_Nanopore"

Volunteer_6_Swab_1_Nanopore <- read_csv("0747-11.csv")
Volunteer_6_Swab_1_Nanopore <- Volunteer_6_Swab_1_Nanopore %>% select(name, fraction_total_reads)
names(Volunteer_6_Swab_1_Nanopore)[names(Volunteer_6_Swab_1_Nanopore) == "fraction_total_reads"] <- "Volunteer_6_Swab_1_Nanopore"

Volunteer_6_Swab_2_Nanopore <- read_csv("0747-12.csv")
Volunteer_6_Swab_2_Nanopore <- Volunteer_6_Swab_2_Nanopore %>% select(name, fraction_total_reads)
names(Volunteer_6_Swab_2_Nanopore)[names(Volunteer_6_Swab_2_Nanopore) == "fraction_total_reads"] <- "Volunteer_6_Swab_2_Nanopore"

Volunteer_7_Swab_2_Nanopore <- read_csv("0747-14.csv")
Volunteer_7_Swab_2_Nanopore <- Volunteer_7_Swab_2_Nanopore %>% select(name, fraction_total_reads)
names(Volunteer_7_Swab_2_Nanopore)[names(Volunteer_7_Swab_2_Nanopore) == "fraction_total_reads"] <- "Volunteer_7_Swab_2_Nanopore"

Volunteer_8_Swab_1_Nanopore <- read_csv("0747-15.csv")
Volunteer_8_Swab_1_Nanopore <- Volunteer_8_Swab_1_Nanopore %>% select(name, fraction_total_reads)
names(Volunteer_8_Swab_1_Nanopore)[names(Volunteer_8_Swab_1_Nanopore) == "fraction_total_reads"] <- "Volunteer_8_Swab_1_Nanopore"

Volunteer_8_Swab_2_Nanopore <- read_csv("0769-16.csv")
Volunteer_8_Swab_2_Nanopore <- Volunteer_8_Swab_2_Nanopore %>% select(name, fraction_total_reads)
names(Volunteer_8_Swab_2_Nanopore)[names(Volunteer_8_Swab_2_Nanopore) == "fraction_total_reads"] <- "Volunteer_8_Swab_2_Nanopore"

Volunteer_10_Swab_1_Nanopore <- read_csv("0769-19.csv")
Volunteer_10_Swab_1_Nanopore <- Volunteer_10_Swab_1_Nanopore %>% select(name, fraction_total_reads)
names(Volunteer_10_Swab_1_Nanopore)[names(Volunteer_10_Swab_1_Nanopore) == "fraction_total_reads"] <- "Volunteer_10_Swab_1_Nanopore"

Volunteer_11_Swab_1_Nanopore <- read_csv("0769-21.csv")
Volunteer_11_Swab_1_Nanopore <- Volunteer_11_Swab_1_Nanopore %>% select(name, fraction_total_reads)
names(Volunteer_11_Swab_1_Nanopore)[names(Volunteer_11_Swab_1_Nanopore) == "fraction_total_reads"] <- "Volunteer_11_Swab_1_Nanopore"

Volunteer_11_Swab_2_Nanopore <- read_csv("0769-22.csv")
Volunteer_11_Swab_2_Nanopore <- Volunteer_11_Swab_2_Nanopore %>% select(name, fraction_total_reads)
names(Volunteer_11_Swab_2_Nanopore)[names(Volunteer_11_Swab_2_Nanopore) == "fraction_total_reads"] <- "Volunteer_11_Swab_2_Nanopore"

Volunteer_12_Swab_2_Nanopore <- read_csv("0769-24.csv")
Volunteer_12_Swab_2_Nanopore <- Volunteer_12_Swab_2_Nanopore %>% select(name, fraction_total_reads)
names(Volunteer_12_Swab_2_Nanopore)[names(Volunteer_12_Swab_2_Nanopore) == "fraction_total_reads"] <- "Volunteer_12_Swab_2_Nanopore"

Positive_Control_1_Nanopore <- read_csv("0769-Pos-Con-1.csv")
Positive_Control_1_Nanopore <- Positive_Control_1_Nanopore %>% select(name, fraction_total_reads)
names(Positive_Control_1_Nanopore)[names(Positive_Control_1_Nanopore) == "fraction_total_reads"] <- "Positive_Control_1_Nanopore"

Positive_Control_2_Nanopore <- read_csv("0769-Pos-Con-2.csv")
Positive_Control_2_Nanopore <- Positive_Control_2_Nanopore %>% select(name, fraction_total_reads)
names(Positive_Control_2_Nanopore)[names(Positive_Control_2_Nanopore) == "fraction_total_reads"] <- "Positive_Control_2_Nanopore"

Positive_Control_3_Nanopore <- read_csv("0769-Pos-Con-3.csv")
Positive_Control_3_Nanopore <- Positive_Control_3_Nanopore %>% select(name, fraction_total_reads)
names(Positive_Control_3_Nanopore)[names(Positive_Control_3_Nanopore) == "fraction_total_reads"] <- "Positive_Control_3_Nanopore"

Positive_Control_4_Nanopore <- read_csv("0769-Pos-Con-4.csv")
Positive_Control_4_Nanopore <- Positive_Control_4_Nanopore %>% select(name, fraction_total_reads)
names(Positive_Control_4_Nanopore)[names(Positive_Control_4_Nanopore) == "fraction_total_reads"] <- "Positive_Control_4_Nanopore"

Negative_Control_Nanopore <- read_csv("0769-Neg-Con.csv")
Negative_Control_Nanopore <- Negative_Control_Nanopore %>% select(name, fraction_total_reads)
names(Negative_Control_Nanopore)[names(Negative_Control_Nanopore) == "fraction_total_reads"] <- "Negative_Control_Nanopore"


# R can only merge two files each time.
# Merge the files together using the species "name" column.

merged_final <- Volunteer_1_Swab_1_Illumina %>%
  full_join(Volunteer_1_Swab_2_Illumina, by='name') %>%
  full_join(Volunteer_2_Swab_1_Illumina, by='name') %>%
  full_join(Volunteer_2_Swab_2_Illumina, by='name') %>%
  full_join(Volunteer_3_Swab_1_Illumina, by='name') %>%
  full_join(Volunteer_3_Swab_2_Illumina, by='name') %>%
  full_join(Volunteer_4_Swab_1_Illumina, by='name') %>%
  full_join(Volunteer_4_Swab_2_Illumina, by='name') %>%
  full_join(Volunteer_5_Swab_1_Illumina, by='name') %>%
  full_join(Volunteer_5_Swab_2_Illumina, by='name') %>%
  full_join(Volunteer_6_Swab_1_Illumina, by='name') %>%
  full_join(Volunteer_6_Swab_2_Illumina, by='name') %>%
  full_join(Volunteer_7_Swab_1_Illumina, by='name') %>%
  full_join(Volunteer_7_Swab_2_Illumina, by='name') %>%
  full_join(Volunteer_8_Swab_1_Illumina, by='name') %>%
  full_join(Volunteer_8_Swab_2_Illumina, by='name') %>%
  full_join(Volunteer_9_Swab_1_Illumina, by='name') %>%
  full_join(Volunteer_9_Swab_2_Illumina, by='name') %>%
  full_join(Volunteer_10_Swab_1_Illumina, by='name') %>%
  full_join(Volunteer_10_Swab_2_Illumina, by='name') %>%
  full_join(Volunteer_11_Swab_1_Illumina, by='name') %>%
  full_join(Volunteer_11_Swab_2_Illumina, by='name') %>%
  full_join(Volunteer_12_Swab_1_Illumina, by='name') %>%
  full_join(Volunteer_12_Swab_2_Illumina, by='name') %>%
  full_join(Positive_Control_1_Illumina, by='name') %>%
  full_join(Positive_Control_2_Illumina, by='name') %>%
  full_join(Positive_Control_3_Illumina, by='name') %>%
  full_join(Positive_Control_4_Illumina, by='name') %>%
  full_join(Negative_Control_Illumina, by='name') %>%
  full_join(Volunteer_1_Swab_2_Nanopore, by='name') %>%
  full_join(Volunteer_3_Swab_1_Nanopore, by='name') %>%
  full_join(Volunteer_3_Swab_2_Nanopore, by='name') %>%
  full_join(Volunteer_4_Swab_1_Nanopore, by='name') %>%
  full_join(Volunteer_6_Swab_1_Nanopore, by='name') %>%
  full_join(Volunteer_6_Swab_2_Nanopore, by='name') %>%
  full_join(Volunteer_7_Swab_2_Nanopore, by='name') %>%
  full_join(Volunteer_8_Swab_1_Nanopore, by='name') %>%
  full_join(Volunteer_8_Swab_2_Nanopore, by='name') %>%
  full_join(Volunteer_10_Swab_1_Nanopore, by='name') %>%
  full_join(Volunteer_11_Swab_1_Nanopore, by='name') %>%
  full_join(Volunteer_11_Swab_2_Nanopore, by='name') %>%
  full_join(Volunteer_12_Swab_2_Nanopore, by='name') %>%
  full_join(Positive_Control_1_Nanopore, by='name') %>%
  full_join(Positive_Control_2_Nanopore, by='name') %>%
  full_join(Positive_Control_3_Nanopore, by='name') %>%
  full_join(Positive_Control_4_Nanopore, by='name') %>%
  full_join(Negative_Control_Nanopore, by='name')


# "NA" is added when one sample does not contain a species.
# Replace the NAs with zeros.
merged_final <- merged_final %>% replace(is.na(.), 0)

# Convert the data into percentages if needed for plotting.
merged_final <- mutate_if(merged_final, is.numeric, ~ . * 100)

# Turn the species names into rownames.
merged_final <- column_to_rownames(merged_final, 'name')

# Turn off the scientific notation (I just find the data easier to read with it turned off).
options(scipen=999)

# Order the dataframe so that the most abundant species are at the top.
merged_final_ordered <-merged_final[order(rowSums(merged_final),decreasing=T),]

# Transpose the dataframe so that the sample IDs become the row names.
merged_final_ordered_transposed <- t(merged_final_ordered)
# Convert back to a data frame for saving the file.
merged_final_ordered_transposed <- as.data.frame(merged_final_ordered_transposed)

# Save the new combined file as a .csv file.
write_csv(merged_final_ordered_transposed, "RA_Volunteer_Within.csv")


###################################################################################################
# Make a stacked bar plot of the results.

# Select the top 10 most abundant species.
merged_final_ordered_transposed <- rownames_to_column(merged_final_ordered_transposed, var = "Sample_ID")

subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_1_Swab_1_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other <- rownames_to_column(x_other, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_long <- melt(x_other, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Cutibacterium.acnes = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Staphylococcus.hominis = "purple",
                    Pseudomonas.putida = "cadetblue1",
                    Staphylococcus.capitis = "green4",
                    Serratia.marcescens = "yellow",
                    Finegoldia.magna = "black",
                    Fervidobacterium.pennivorans = "darkolivegreen1",
                    Corynebacterium.ureicelerivorans = "red4",
                    Staphylococcus.auricularis = "sienna4",
                    other = "grey")

x_other_long <- subset(x_other_long, Sample_ID %in% c("Volunteer_1_Swab_1_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_1_Swab_1_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_1_Swab_1_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_1_Swab_2_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_1 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_1 <- rownames_to_column(x_other_1, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_1_long <- melt(x_other_1, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_1_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Acinetobacter.lwoffii = "blue1",
                    Cutibacterium.acnes = "red",
                    Pseudomonas.putida = "purple",
                    Staphylococcus.epidermidis = "cadetblue1",
                    Acinetobacter.baumannii = "green4",
                    Staphylococcus.hominis = "yellow",
                    Staphylococcus.capitis = "black",
                    Acinetobacter.sp..ACNIH1 = "darkolivegreen1",
                    Acinetobacter.haemolyticus = "red4",
                    Serratia.marcescens = "sienna4",
                    other = "grey")

x_other_1_long <- subset(x_other_1_long, Sample_ID %in% c("Volunteer_1_Swab_2_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_1_Swab_2_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_1_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_1_Swab_2_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_2_Swab_1_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_2 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_2 <- rownames_to_column(x_other_2, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_2_long <- melt(x_other_2, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_2_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Cutibacterium.acnes = "blue1",
                    Staphylococcus.hominis = "red",
                    Moraxella.osloensis = "purple",
                    Staphylococcus.epidermidis = "cadetblue1",
                    Acinetobacter.lwoffii = "green4",
                    Staphylococcus.saprophyticus = "yellow",
                    Gordonia.bronchialis = "black",
                    Fervidobacterium.pennivorans = "darkolivegreen1",
                    Microbacterium.aurum = "red4",
                    Staphylococcus.capitis = "sienna4",
                    other = "grey")

x_other_2_long <- subset(x_other_2_long, Sample_ID %in% c("Volunteer_2_Swab_1_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_2_Swab_1_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_2_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_2_Swab_1_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_2_Swab_2_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_3 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_3 <- rownames_to_column(x_other_3, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_3_long <- melt(x_other_3, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_3_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Staphylococcus.hominis = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Cutibacterium.acnes = "purple",
                    Corynebacterium.striatum = "cadetblue1",
                    Moraxella.osloensis = "green4",
                    Corynebacterium.simulans = "yellow",
                    Finegoldia.magna = "black",
                    Staphylococcus.saprophyticus = "darkolivegreen1",
                    Kocuria.rhizophila = "red4",
                    Corynebacterium.ureicelerivorans = "sienna4",
                    other = "grey")

x_other_3_long <- subset(x_other_3_long, Sample_ID %in% c("Volunteer_2_Swab_2_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_2_Swab_2_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_3_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_2_Swab_2_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )



# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_3_Swab_1_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_4 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_4 <- rownames_to_column(x_other_4, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_4_long <- melt(x_other_4, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_4_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Moraxella.osloensis = "blue1",
                    Cutibacterium.acnes = "red",
                    Staphylococcus.epidermidis = "purple",
                    Paracoccus.yeei = "cadetblue1",
                    Micrococcus.luteus = "green4",
                    Staphylococcus.capitis = "yellow",
                    Kocuria.rhizophila = "black",
                    Pseudomonas.putida = "darkolivegreen1",
                    Staphylococcus.hominis = "red4",
                    Klebsiella.pneumoniae = "sienna4",
                    other = "grey")

x_other_4_long <- subset(x_other_4_long, Sample_ID %in% c("Volunteer_3_Swab_1_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_3_Swab_1_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_4_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_3_Swab_1_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_3_Swab_2_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_5 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_5 <- rownames_to_column(x_other_5, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_5_long <- melt(x_other_5, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_5_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Cutibacterium.acnes = "blue1",
                    Corynebacterium.ureicelerivorans = "red",
                    Moraxella.osloensis = "purple",
                    Staphylococcus.haemolyticus = "cadetblue1",
                    Staphylococcus.epidermidis = "green4",
                    Staphylococcus.hominis = "yellow",
                    Kocuria.rhizophila = "black",
                    Staphylococcus.capitis = "darkolivegreen1",
                    Paracoccus.yeei = "red4",
                    Micrococcus.luteus = "sienna4",
                    other = "grey")

x_other_5_long <- subset(x_other_5_long, Sample_ID %in% c("Volunteer_3_Swab_2_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_3_Swab_2_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_5_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_3_Swab_2_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_4_Swab_1_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_6 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_6 <- rownames_to_column(x_other_6, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_6_long <- melt(x_other_6, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_6_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Acinetobacter.johnsonii = "blue1",
                    Acinetobacter.lwoffii = "red",
                    Acinetobacter.baumannii = "purple",
                    Acinetobacter.haemolyticus = "cadetblue1",
                    Acinetobacter.junii = "green4",
                    Acinetobacter.pittii = "yellow",
                    Acinetobacter.schindleri = "black",
                    Acinetobacter.sp..ACNIH1 = "darkolivegreen1",
                    Achromobacter.xylosoxidans = "red4",
                    Acinetobacter.sp..ACNIH2 = "sienna4",
                    other = "grey")

x_other_6_long <- subset(x_other_6_long, Sample_ID %in% c("Volunteer_4_Swab_1_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_4_Swab_1_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_6_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_4_Swab_1_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_4_Swab_2_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_7 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_7 <- rownames_to_column(x_other_7, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_7_long <- melt(x_other_7, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_7_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Moraxella.osloensis = "red",
                    Staphylococcus.capitis = "purple",
                    Fervidobacterium.pennivorans = "cadetblue1",
                    Acinetobacter.lwoffii = "green4",
                    Xanthomonas.campestris = "yellow",
                    Cutibacterium.acnes = "black",
                    Bifidobacterium.longum = "darkolivegreen1",
                    Staphylococcus.hominis = "red4",
                    Staphylococcus.haemolyticus = "sienna4",
                    other = "grey")

x_other_7_long <- subset(x_other_7_long, Sample_ID %in% c("Volunteer_4_Swab_2_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_4_Swab_2_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_7_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_4_Swab_2_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 13 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_5_Swab_1_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_8 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_8 <- rownames_to_column(x_other_8, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_8_long <- melt(x_other_8, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_8_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Acinetobacter.lwoffii = "blue1",
                    Cutibacterium.acnes = "red",
                    Moraxella.osloensis = "purple",
                    Staphylococcus.epidermidis = "cadetblue1",
                    Staphylococcus.hominis = "green4",
                    Staphylococcus.capitis = "yellow",
                    Acinetobacter.sp..ACNIH1 = "black",
                    Acinetobacter.baumannii = "darkolivegreen1",
                    Paracoccus.yeei = "red4",
                    Acinetobacter.schindleri = "sienna4",
                    other = "grey")

x_other_8_long <- subset(x_other_8_long, Sample_ID %in% c("Volunteer_5_Swab_1_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_5_Swab_1_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_8_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_5_Swab_1_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_5_Swab_2_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_9 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_9 <- rownames_to_column(x_other_9, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_9_long <- melt(x_other_9, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_9_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Cutibacterium.acnes = "blue1",
                    Acinetobacter.lwoffii = "red",
                    Staphylococcus.epidermidis = "purple",
                    Moraxella.osloensis = "cadetblue1",
                    Pseudomonas.putida = "green4",
                    Staphylococcus.capitis = "yellow",
                    Staphylococcus.hominis = "black",
                    Finegoldia.magna = "darkolivegreen1",
                    Paracoccus.yeei = "red4",
                    Staphylococcus.cohnii = "sienna4",
                    other = "grey")

x_other_9_long <- subset(x_other_9_long, Sample_ID %in% c("Volunteer_5_Swab_2_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_5_Swab_2_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_9_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_5_Swab_2_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_6_Swab_1_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_10 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_10 <- rownames_to_column(x_other_10, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_10_long <- melt(x_other_10, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_10_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Acinetobacter.lwoffii = "blue1",
                    Acinetobacter.radioresistens = "red",
                    Acinetobacter.sp..ACNIH1 = "purple",
                    Acinetobacter.baumannii = "cadetblue1",
                    Micrococcus.luteus = "green4",
                    Acinetobacter.schindleri = "yellow",
                    Kocuria.rhizophila = "black",
                    Acinetobacter.pittii = "darkolivegreen1",
                    Staphylococcus.epidermidis = "red4",
                    Acinetobacter.johnsonii = "sienna4",
                    other = "grey")

x_other_10_long <- subset(x_other_10_long, Sample_ID %in% c("Volunteer_6_Swab_1_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_6_Swab_1_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_10_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_6_Swab_1_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_6_Swab_2_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_11 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_11 <- rownames_to_column(x_other_11, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_11_long <- melt(x_other_11, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_11_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Acinetobacter.lwoffii = "blue1",
                    Acinetobacter.sp..ACNIH1 = "red",
                    Micrococcus.luteus = "purple",
                    Acinetobacter.baumannii = "cadetblue1",
                    Kocuria.rhizophila = "green4",
                    Cutibacterium.acnes = "yellow",
                    Acinetobacter.schindleri = "black",
                    Moraxella.osloensis = "darkolivegreen1",
                    Staphylococcus.epidermidis = "red4",
                    Acinetobacter.pittii = "sienna4",
                    other = "grey")

x_other_11_long <- subset(x_other_11_long, Sample_ID %in% c("Volunteer_6_Swab_2_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_6_Swab_2_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_11_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_6_Swab_2_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_7_Swab_1_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_12 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_12 <- rownames_to_column(x_other_12, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_12_long <- melt(x_other_12, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_12_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Moraxella.osloensis = "blue1",
                    Cutibacterium.acnes = "red",
                    Staphylococcus.epidermidis = "purple",
                    Staphylococcus.hominis = "cadetblue1",
                    Micrococcus.luteus = "green4",
                    Fervidobacterium.pennivorans = "yellow",
                    Finegoldia.magna = "black",
                    Erwinia.gerundensis = "darkolivegreen1",
                    Lactobacillus.jensenii = "red4",
                    Tatumella.ptyseos = "sienna4",
                    other = "grey")

x_other_12_long <- subset(x_other_12_long, Sample_ID %in% c("Volunteer_7_Swab_1_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_7_Swab_1_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_12_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_7_Swab_1_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_7_Swab_2_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_13 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_13 <- rownames_to_column(x_other_13, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_13_long <- melt(x_other_13, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_13_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Acinetobacter.lwoffii = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Acinetobacter.baumannii = "purple",
                    Cutibacterium.acnes = "cadetblue1",
                    Streptococcus.mitis = "green4",
                    Acinetobacter.sp..ACNIH1 = "yellow",
                    Staphylococcus.hominis = "black",
                    Moraxella.osloensis = "darkolivegreen1",
                    Pseudomonas.putida = "red4",
                    Acinetobacter.schindleri = "sienna4",
                    other = "grey")

x_other_13_long <- subset(x_other_13_long, Sample_ID %in% c("Volunteer_7_Swab_2_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_7_Swab_2_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_13_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_7_Swab_2_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_8_Swab_1_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_14 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_14 <- rownames_to_column(x_other_14, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_14_long <- melt(x_other_14, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_14_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Acinetobacter.baumannii = "blue1",
                    Moraxella.osloensis = "red",
                    Micrococcus.luteus = "purple",
                    Paracoccus.yeei = "cadetblue1",
                    Acinetobacter.pittii = "green4",
                    Acinetobacter.calcoaceticus = "yellow",
                    Acinetobacter.nosocomialis = "black",
                    Dietzia.sp..oral.taxon.368 = "darkolivegreen1",
                    Micrococcus.sp..A1 = "red4",
                    Cutibacterium.acnes = "sienna4",
                    other = "grey")

x_other_14_long <- subset(x_other_14_long, Sample_ID %in% c("Volunteer_8_Swab_1_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_8_Swab_1_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_14_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_8_Swab_1_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )


# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_8_Swab_2_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_15 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_15 <- rownames_to_column(x_other_15, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_15_long <- melt(x_other_15, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_15_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Acinetobacter.baumannii = "blue1",
                    Acinetobacter.pittii = "red",
                    Moraxella.osloensis = "purple",
                    Acinetobacter.calcoaceticus = "cadetblue1",
                    Acinetobacter.nosocomialis = "green4",
                    Micrococcus.luteus = "yellow",
                    Acinetobacter.lwoffii = "black",
                    Staphylococcus.epidermidis = "darkolivegreen1",
                    Acinetobacter.phage.vB_AbaS_TRS1 = "red4",
                    Paracoccus.yeei = "sienna4",
                    other = "grey")

x_other_15_long <- subset(x_other_15_long, Sample_ID %in% c("Volunteer_8_Swab_2_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_8_Swab_2_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_15_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_8_Swab_2_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_9_Swab_1_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_16 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_16 <- rownames_to_column(x_other_16, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_16_long <- melt(x_other_16, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_16_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Cutibacterium.acnes = "blue1",
                    Moraxella.osloensis = "red",
                    Paracoccus.yeei = "purple",
                    Staphylococcus.epidermidis = "cadetblue1",
                    Staphylococcus.capitis = "green4",
                    Pluralibacter.gergoviae = "yellow",
                    Fervidobacterium.pennivorans = "black",
                    Staphylococcus.hominis = "darkolivegreen1",
                    Streptococcus.pneumoniae = "red4",
                    Pseudomonas.oryzihabitans = "sienna4",
                    other = "grey")

x_other_16_long <- subset(x_other_16_long, Sample_ID %in% c("Volunteer_9_Swab_1_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_9_Swab_1_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_16_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_9_Swab_1_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_9_Swab_2_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_17 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_17 <- rownames_to_column(x_other_17, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_17_long <- melt(x_other_17, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_17_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Cutibacterium.acnes = "blue1",
                    Pseudomonas.oryzihabitans = "red",
                    Moraxella.osloensis = "purple",
                    Micrococcus.luteus = "cadetblue1",
                    Pseudomonas.aeruginosa = "green4",
                    Staphylococcus.epidermidis = "yellow",
                    Staphylococcus.capitis = "black",
                    Pseudomonas.psychrotolerans = "darkolivegreen1",
                    Kocuria.palustris = "red4",
                    Paracoccus.yeei = "sienna4",
                    other = "grey")

x_other_17_long <- subset(x_other_17_long, Sample_ID %in% c("Volunteer_9_Swab_2_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_9_Swab_2_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_17_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_9_Swab_2_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )


# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_10_Swab_1_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_18 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_18 <- rownames_to_column(x_other_18, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_18_long <- melt(x_other_18, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_18_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Cutibacterium.acnes = "blue1",
                    Moraxella.osloensis = "red",
                    Staphylococcus.epidermidis = "purple",
                    Staphylococcus.capitis = "cadetblue1",
                    Staphylococcus.hominis = "green4",
                    Fervidobacterium.pennivorans = "yellow",
                    Kocuria.rhizophila = "black",
                    Acinetobacter.lwoffii = "darkolivegreen1",
                    Acinetobacter.baumannii = "red4",
                    Corynebacterium.striatum = "sienna4",
                    other = "grey")

x_other_18_long <- subset(x_other_18_long, Sample_ID %in% c("Volunteer_10_Swab_1_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_10_Swab_1_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_18_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_10_Swab_1_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_10_Swab_2_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_19 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_19 <- rownames_to_column(x_other_19, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_19_long <- melt(x_other_19, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_19_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Cutibacterium.acnes = "blue1",
                    Moraxella.osloensis = "red",
                    Staphylococcus.epidermidis = "purple",
                    Acinetobacter.lwoffii = "cadetblue1",
                    Staphylococcus.hominis = "green4",
                    Staphylococcus.capitis = "yellow",
                    Fervidobacterium.pennivorans = "black",
                    Acinetobacter.johnsonii = "darkolivegreen1",
                    Leuconostoc.citreum = "red4",
                    Pseudomonas.aeruginosa = "sienna4",
                    other = "grey")

x_other_19_long <- subset(x_other_19_long, Sample_ID %in% c("Volunteer_10_Swab_2_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_10_Swab_2_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_19_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_10_Swab_2_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_11_Swab_1_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_20 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_20 <- rownames_to_column(x_other_20, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_20_long <- melt(x_other_20, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_20_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Pseudomonas.putida = "blue1",
                    Cutibacterium.acnes = "red",
                    Fervidobacterium.pennivorans = "purple",
                    Staphylococcus.epidermidis = "cadetblue1",
                    Corynebacterium.ureicelerivorans = "green4",
                    Staphylococcus.capitis = "yellow",
                    Finegoldia.magna = "black",
                    Staphylococcus.hominis = "darkolivegreen1",
                    Kocuria.rhizophila = "red4",
                    Moraxella.osloensis = "sienna4",
                    other = "grey")

x_other_20_long <- subset(x_other_20_long, Sample_ID %in% c("Volunteer_11_Swab_1_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_11_Swab_1_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_20_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_11_Swab_1_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_11_Swab_2_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_21 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_21 <- rownames_to_column(x_other_21, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_21_long <- melt(x_other_21, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_21_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Cutibacterium.acnes = "blue1",
                    Pseudomonas.putida = "red",
                    Staphylococcus.epidermidis = "purple",
                    Moraxella.osloensis = "cadetblue1",
                    Staphylococcus.capitis = "green4",
                    Staphylococcus.hominis = "yellow",
                    Fervidobacterium.pennivorans = "black",
                    Streptococcus.mitis = "darkolivegreen1",
                    Finegoldia.magna = "red4",
                    Streptococcus.pneumoniae = "sienna4",
                    other = "grey")

x_other_21_long <- subset(x_other_21_long, Sample_ID %in% c("Volunteer_11_Swab_2_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_11_Swab_2_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_21_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_11_Swab_2_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_12_Swab_1_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_22 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_22 <- rownames_to_column(x_other_22, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_22_long <- melt(x_other_22, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_22_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Cutibacterium.acnes = "blue1",
                    Pseudomonas.putida = "red",
                    Staphylococcus.epidermidis = "purple",
                    Streptococcus.mitis = "cadetblue1",
                    Streptococcus.thermophilus = "green4",
                    Streptococcus.pneumoniae = "yellow",
                    Fusobacterium.nucleatum = "black",
                    Fervidobacterium.pennivorans = "darkolivegreen1",
                    Xanthomonas.campestris = "red4",
                    Streptococcus.salivarius = "sienna4",
                    other = "grey")

x_other_22_long <- subset(x_other_22_long, Sample_ID %in% c("Volunteer_12_Swab_1_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_12_Swab_1_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_22_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_12_Swab_1_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_12_Swab_2_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_23 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_23 <- rownames_to_column(x_other_23, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_23_long <- melt(x_other_23, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_23_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Acinetobacter.radioresistens = "blue1",
                    Corynebacterium.striatum = "red",
                    Cutibacterium.acnes = "purple",
                    Acinetobacter.lwoffii = "cadetblue1",
                    Micrococcus.luteus = "green4",
                    Streptococcus.mitis = "yellow",
                    Streptococcus.pneumoniae = "black",
                    Acinetobacter.baumannii = "darkolivegreen1",
                    Staphylococcus.epidermidis = "red4",
                    Acinetobacter.johnsonii = "sienna4",
                    other = "grey")

x_other_23_long <- subset(x_other_23_long, Sample_ID %in% c("Volunteer_12_Swab_2_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_12_Swab_2_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_23_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_12_Swab_2_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )



# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Positive_Control_1_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_24 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_24 <- rownames_to_column(x_other_24, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_24_long <- melt(x_other_24, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_24_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Corynebacterium.striatum = "blue1",
                    Micrococcus.luteus = "red",
                    Streptococcus.mitis = "purple",
                    Streptococcus.pneumoniae = "cadetblue1",
                    Staphylococcus.epidermidis = "green4",
                    Cutibacterium.acnes = "yellow",
                    Acinetobacter.lwoffii = "black",
                    Acinetobacter.johnsonii = "darkolivegreen1",
                    Streptococcus.pseudopneumoniae = "red4",
                    Streptococcus.oralis = "sienna4",
                    other = "grey")

x_other_24_long <- subset(x_other_24_long, Sample_ID %in% c("Positive_Control_1_Illumina"))

# organise x axis how you want
x.order <- c("Positive_Control_1_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_24_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Positive_Control_1_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Positive_Control_2_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_25 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_25 <- rownames_to_column(x_other_25, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_25_long <- melt(x_other_25, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_25_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Corynebacterium.striatum = "blue1",
                    Streptococcus.mitis = "red",
                    Staphylococcus.epidermidis = "purple",
                    Streptococcus.pneumoniae = "cadetblue1",
                    Micrococcus.luteus = "green4",
                    Cutibacterium.acnes = "yellow",
                    Acinetobacter.lwoffii = "black",
                    Acinetobacter.johnsonii = "darkolivegreen1",
                    Streptococcus.pseudopneumoniae = "red4",
                    Streptococcus.oralis = "sienna4",
                    other = "grey")

x_other_25_long <- subset(x_other_25_long, Sample_ID %in% c("Positive_Control_2_Illumina"))

# organise x axis how you want
x.order <- c("Positive_Control_2_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_25_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Positive_Control_2_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Positive_Control_3_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_26 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_26 <- rownames_to_column(x_other_26, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_26_long <- melt(x_other_26, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_26_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Streptococcus.mitis = "blue1",
                    Streptococcus.pneumoniae = "red",
                    Staphylococcus.epidermidis = "purple",
                    Micrococcus.luteus = "cadetblue1",
                    Corynebacterium.striatum = "green4",
                    Acinetobacter.lwoffii = "yellow",
                    Cutibacterium.acnes = "black",
                    Acinetobacter.johnsonii = "darkolivegreen1",
                    Streptococcus.pseudopneumoniae = "red4",
                    Acinetobacter.junii = "sienna4",
                    other = "grey")

x_other_26_long <- subset(x_other_26_long, Sample_ID %in% c("Positive_Control_3_Illumina"))

# organise x axis how you want
x.order <- c("Positive_Control_3_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_26_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Positive_Control_3_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Positive_Control_4_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_27 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_27 <- rownames_to_column(x_other_27, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_27_long <- melt(x_other_27, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_27_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Streptococcus.mitis = "blue1",
                    Micrococcus.luteus = "red",
                    Streptococcus.pneumoniae = "purple",
                    Acinetobacter.lwoffii = "cadetblue1",
                    Staphylococcus.epidermidis = "green4",
                    Acinetobacter.johnsonii = "yellow",
                    Cutibacterium.acnes = "black",
                    Corynebacterium.striatum = "darkolivegreen1",
                    Streptococcus.pseudopneumoniae = "red4",
                    Acinetobacter.baumannii = "sienna4",
                    other = "grey")

x_other_27_long <- subset(x_other_27_long, Sample_ID %in% c("Positive_Control_4_Illumina"))

# organise x axis how you want
x.order <- c("Positive_Control_4_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_27_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Positive_Control_4_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Negative_Control_Illumina"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_28 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_28 <- rownames_to_column(x_other_28, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_28_long <- melt(x_other_28, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_28_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Muribaculum.intestinale = "blue1",
                    Faecalibaculum.rodentium = "red",
                    Acinetobacter.lwoffii = "purple",
                    Acinetobacter.baumannii = "cadetblue1",
                    Cutibacterium.acnes = "green4",
                    Staphylococcus.epidermidis = "yellow",
                    Corynebacterium.striatum = "black",
                    Moraxella.osloensis = "darkolivegreen1",
                    Staphylococcus.hominis = "red4",
                    Streptococcus.mitis = "sienna4",
                    other = "grey")

x_other_28_long <- subset(x_other_28_long, Sample_ID %in% c("Negative_Control_Illumina"))

# organise x axis how you want
x.order <- c("Negative_Control_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_28_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Negative_Control_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_1_Swab_2_Nanopore"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_29 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_29 <- rownames_to_column(x_other_29, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_29_long <- melt(x_other_29, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_29_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Acinetobacter.lwoffii = "blue1",
                    Acinetobacter.baumannii = "red",
                    Cutibacterium.acnes = "purple",
                    Staphylococcus.epidermidis = "cadetblue1",
                    Corynebacterium.striatum = "green4",
                    Moraxella.osloensis = "yellow",
                    Staphylococcus.hominis = "black",
                    Streptococcus.mitis = "darkolivegreen1",
                    Micrococcus.luteus = "red4",
                    Acinetobacter.radioresistens = "sienna4",
                    other = "grey")

x_other_29_long <- subset(x_other_29_long, Sample_ID %in% c("Volunteer_1_Swab_2_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_1_Swab_2_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_29_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_1_Swab_2_Nanopore",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )


# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_3_Swab_1_Nanopore"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_30 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_30 <- rownames_to_column(x_other_30, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_30_long <- melt(x_other_30, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_30_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Moraxella.osloensis = "red",
                    Staphylococcus.hominis = "purple",
                    Corynebacterium.striatum = "cadetblue1",
                    Acinetobacter.lwoffii = "green4",
                    Acinetobacter.baumannii = "yellow",
                    Cutibacterium.acnes = "black",
                    Streptococcus.mitis = "darkolivegreen1",
                    Micrococcus.luteus = "red4",
                    Acinetobacter.radioresistens = "sienna4",
                    other = "grey")

x_other_30_long <- subset(x_other_30_long, Sample_ID %in% c("Volunteer_3_Swab_1_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_3_Swab_1_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_30_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_3_Swab_1_Nanopore",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_3_Swab_2_Nanopore"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_31 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_31 <- rownames_to_column(x_other_31, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_31_long <- melt(x_other_31, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_31_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Acinetobacter.baumannii = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Corynebacterium.ureicelerivorans = "purple",
                    Staphylococcus.haemolyticus = "cadetblue1",
                    Moraxella.osloensis = "green4",
                    Acinetobacter.lwoffii = "yellow",
                    Cutibacterium.acnes = "black",
                    Corynebacterium.striatum = "darkolivegreen1",
                    Staphylococcus.hominis = "red4",
                    Streptococcus.mitis = "sienna4",
                    other = "grey")

x_other_31_long <- subset(x_other_31_long, Sample_ID %in% c("Volunteer_3_Swab_2_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_3_Swab_2_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_31_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_3_Swab_2_Nanopore",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_4_Swab_1_Nanopore"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_32 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_32 <- rownames_to_column(x_other_32, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_32_long <- melt(x_other_32, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_32_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Acinetobacter.lwoffii = "blue1",
                    Acinetobacter.johnsonii = "red",
                    Staphylococcus.epidermidis = "purple",
                    Corynebacterium.striatum = "cadetblue1",
                    Acinetobacter.baumannii = "green4",
                    Cutibacterium.acnes = "yellow",
                    Moraxella.osloensis = "black",
                    Staphylococcus.hominis = "darkolivegreen1",
                    Streptococcus.mitis = "red4",
                    Micrococcus.luteus = "sienna4",
                    other = "grey")

x_other_32_long <- subset(x_other_32_long, Sample_ID %in% c("Volunteer_4_Swab_1_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_4_Swab_1_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_32_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_4_Swab_1_Illumina",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )


# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_6_Swab_1_Nanopore"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_33 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_33 <- rownames_to_column(x_other_33, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_33_long <- melt(x_other_33, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_33_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Acinetobacter.lwoffii = "blue1",
                    Acinetobacter.baumannii = "red",
                    Staphylococcus.epidermidis = "purple",
                    Corynebacterium.striatum = "cadetblue1",
                    Acinetobacter.radioresistens = "green4",
                    Staphylococcus.hominis = "yellow",
                    Acinetobacter.sp..ACNIH1 = "black",
                    Cutibacterium.acnes = "darkolivegreen1",
                    Moraxella.osloensis = "red4",
                    Streptococcus.mitis = "sienna4",
                    other = "grey")

x_other_33_long <- subset(x_other_33_long, Sample_ID %in% c("Volunteer_6_Swab_1_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_6_Swab_1_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_33_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_6_Swab_1_Nanopore",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_6_Swab_2_Nanopore"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_34 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_34 <- rownames_to_column(x_other_34, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_34_long <- melt(x_other_34, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_34_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Acinetobacter.lwoffii = "blue1",
                    Acinetobacter.baumannii = "red",
                    Cutibacterium.acnes = "purple",
                    Staphylococcus.epidermidis = "cadetblue1",
                    Corynebacterium.striatum = "green4",
                    Moraxella.osloensis = "yellow",
                    Staphylococcus.hominis = "black",
                    Streptococcus.mitis = "darkolivegreen1",
                    Micrococcus.luteus = "red4",
                    Acinetobacter.radioresistens = "sienna4",
                    other = "grey")

x_other_34_long <- subset(x_other_34_long, Sample_ID %in% c("Volunteer_6_Swab_2_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_6_Swab_2_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_34_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_6_Swab_2_Nanopore",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_7_Swab_2_Nanopore"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_35 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_35 <- rownames_to_column(x_other_35, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_35_long <- melt(x_other_35, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_35_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Acinetobacter.lwoffii = "blue1",
                    Acinetobacter.baumannii = "red",
                    Cutibacterium.acnes = "purple",
                    Staphylococcus.epidermidis = "cadetblue1",
                    Corynebacterium.striatum = "green4",
                    Moraxella.osloensis = "yellow",
                    Staphylococcus.hominis = "black",
                    Streptococcus.mitis = "darkolivegreen1",
                    Micrococcus.luteus = "red4",
                    Acinetobacter.radioresistens = "sienna4",
                    other = "grey")

x_other_35_long <- subset(x_other_35_long, Sample_ID %in% c("Volunteer_7_Swab_2_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_7_Swab_2_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_35_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_7_Swab_2_Nanopore",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_8_Swab_1_Nanopore"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_36 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_36 <- rownames_to_column(x_other_36, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_36_long <- melt(x_other_36, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_36_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Acinetobacter.baumannii = "blue1",
                    Acinetobacter.lwoffii = "red",
                    Cutibacterium.acnes = "purple",
                    Staphylococcus.epidermidis = "cadetblue1",
                    Corynebacterium.striatum = "green4",
                    Moraxella.osloensis = "yellow",
                    Staphylococcus.hominis = "black",
                    Streptococcus.mitis = "darkolivegreen1",
                    Micrococcus.luteus = "red4",
                    Acinetobacter.radioresistens = "sienna4",
                    other = "grey")

x_other_36_long <- subset(x_other_36_long, Sample_ID %in% c("Volunteer_8_Swab_1_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_8_Swab_1_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_36_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_8_Swab_1_Nanopore",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_8_Swab_2_Nanopore"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_37 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_37 <- rownames_to_column(x_other_37, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_37_long <- melt(x_other_37, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_37_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Acinetobacter.baumannii = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Corynebacterium.striatum = "purple",
                    Staphylococcus.hominis = "cadetblue1",
                    Micrococcus.luteus = "green4",
                    Staphylococcus.capitis = "yellow",
                    Moraxella.osloensis = "black",
                    Streptococcus.mitis = "darkolivegreen1",
                    Acinetobacter.pittii = "red4",
                    Staphylococcus.haemolyticus = "sienna4",
                    other = "grey")

x_other_37_long <- subset(x_other_37_long, Sample_ID %in% c("Volunteer_8_Swab_2_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_8_Swab_2_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_37_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_8_Swab_2_Nanopore",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_10_Swab_1_Nanopore"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_38 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_38 <- rownames_to_column(x_other_38, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_38_long <- melt(x_other_38, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_38_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Acinetobacter.baumannii = "blue1",
                    Corynebacterium.striatum = "red",
                    Staphylococcus.epidermidis = "purple",
                    Staphylococcus.hominis = "cadetblue1",
                    Micrococcus.luteus = "green4",
                    Cutibacterium.acnes = "yellow",
                    Staphylococcus.capitis = "black",
                    Staphylococcus.haemolyticus = "darkolivegreen1",
                    Acinetobacter.radioresistens = "red4",
                    Acinetobacter.lwoffii = "sienna4",
                    other = "grey")

x_other_38_long <- subset(x_other_38_long, Sample_ID %in% c("Volunteer_10_Swab_1_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_10_Swab_1_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_38_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_10_Swab_1_Nanopore",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )



# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_11_Swab_1_Nanopore"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_39 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_39 <- rownames_to_column(x_other_39, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_39_long <- melt(x_other_39, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_39_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Acinetobacter.baumannii = "blue1",
                    Corynebacterium.striatum = "red",
                    Staphylococcus.epidermidis = "purple",
                    Staphylococcus.hominis = "cadetblue1",
                    Cutibacterium.acnes = "green4",
                    Micrococcus.luteus = "yellow",
                    Staphylococcus.capitis = "black",
                    Streptococcus.mitis = "darkolivegreen1",
                    Acinetobacter.lwoffii = "red4",
                    Staphylococcus.haemolyticus = "sienna4",
                    other = "grey")

x_other_39_long <- subset(x_other_39_long, Sample_ID %in% c("Volunteer_11_Swab_1_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_11_Swab_1_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_39_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_11_Swab_1_Nanopore",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_11_Swab_2_Nanopore"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_40 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_40 <- rownames_to_column(x_other_40, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_40_long <- melt(x_other_40, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_40_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Acinetobacter.baumannii = "blue1",
                    Corynebacterium.striatum = "red",
                    Staphylococcus.epidermidis = "purple",
                    Staphylococcus.hominis = "cadetblue1",
                    Cutibacterium.acnes = "green4",
                    Staphylococcus.capitis = "yellow",
                    Micrococcus.luteus = "black",
                    Streptococcus.mitis = "darkolivegreen1",
                    Acinetobacter.radioresistens = "red4",
                    Staphylococcus.haemolyticus = "sienna4",
                    other = "grey")

x_other_40_long <- subset(x_other_40_long, Sample_ID %in% c("Volunteer_11_Swab_2_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_11_Swab_2_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_40_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_11_Swab_2_Nanopore",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_12_Swab_2_Nanopore"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_41 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_41 <- rownames_to_column(x_other_41, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_41_long <- melt(x_other_41, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_41_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Acinetobacter.baumannii = "blue1",
                    Acinetobacter.radioresistens = "red",
                    Staphylococcus.epidermidis = "purple",
                    Corynebacterium.striatum = "cadetblue1",
                    Staphylococcus.hominis = "green4",
                    Micrococcus.luteus = "yellow",
                    Cutibacterium.acnes = "black",
                    Staphylococcus.capitis = "darkolivegreen1",
                    Streptococcus.mitis = "red4",
                    Acinetobacter.lwoffii = "sienna4",
                    other = "grey")

x_other_41_long <- subset(x_other_41_long, Sample_ID %in% c("Volunteer_12_Swab_2_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_12_Swab_2_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_41_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_12_Swab_2_Nanopore",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Positive_Control_1_Nanopore"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_42 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_42 <- rownames_to_column(x_other_42, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_42_long <- melt(x_other_42, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_42_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Corynebacterium.striatum = "blue1",
                    Acinetobacter.baumannii = "red",
                    Staphylococcus.epidermidis = "purple",
                    Streptococcus.mitis = "cadetblue1",
                    Cutibacterium.acnes = "green4",
                    Micrococcus.luteus = "yellow",
                    Acinetobacter.lwoffii = "black",
                    Staphylococcus.hominis = "darkolivegreen1",
                    Staphylococcus.capitis = "red4",
                    Streptococcus.pneumoniae = "sienna4",
                    other = "grey")

x_other_42_long <- subset(x_other_42_long, Sample_ID %in% c("Positive_Control_1_Nanopore"))

# organise x axis how you want
x.order <- c("Positive_Control_1_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_42_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Positive_Control_1_Nanopore",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 13 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Positive_Control_2_Nanopore"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_43 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_43 <- rownames_to_column(x_other_43, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_43_long <- melt(x_other_43, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_43_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Acinetobacter.baumannii = "blue1",
                    Corynebacterium.striatum = "red",
                    Staphylococcus.epidermidis = "purple",
                    Streptococcus.mitis = "cadetblue1",
                    Micrococcus.luteus = "green4",
                    Cutibacterium.acnes = "yellow",
                    Staphylococcus.hominis = "black",
                    Staphylococcus.capitis = "darkolivegreen1",
                    Acinetobacter.lwoffii = "red4",
                    Staphylococcus.haemolyticus = "sienna4",
                    other = "grey")

x_other_43_long <- subset(x_other_43_long, Sample_ID %in% c("Positive_Control_2_Nanopore"))

# organise x axis how you want
x.order <- c("Positive_Control_2_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_43_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Positive_Control_2_Nanopore",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Positive_Control_3_Nanopore"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_44 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_44 <- rownames_to_column(x_other_44, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_44_long <- melt(x_other_44, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_44_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Acinetobacter.baumannii = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Corynebacterium.striatum = "purple",
                    Micrococcus.luteus = "cadetblue1",
                    Staphylococcus.hominis = "green4",
                    Streptococcus.mitis = "yellow",
                    Cutibacterium.acnes = "black",
                    Acinetobacter.lwoffii = "darkolivegreen1",
                    Staphylococcus.capitis = "red4",
                    Acinetobacter.radioresistens = "sienna4",
                    other = "grey")

x_other_44_long <- subset(x_other_44_long, Sample_ID %in% c("Positive_Control_3_Nanopore"))

# organise x axis how you want
x.order <- c("Positive_Control_3_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_44_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Positive_Control_3_Nanopore",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Positive_Control_4_Nanopore"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_45 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_45 <- rownames_to_column(x_other_45, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_45_long <- melt(x_other_45, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_45_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Acinetobacter.baumannii = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Corynebacterium.striatum = "purple",
                    Staphylococcus.hominis = "cadetblue1",
                    Streptococcus.mitis = "green4",
                    Cutibacterium.acnes = "yellow",
                    Micrococcus.luteus = "black",
                    Acinetobacter.radioresistens = "darkolivegreen1",
                    Staphylococcus.capitis = "red4",
                    Acinetobacter.lwoffii = "sienna4",
                    other = "grey")

x_other_45_long <- subset(x_other_45_long, Sample_ID %in% c("Positive_Control_4_Nanopore"))

# organise x axis how you want
x.order <- c("Positive_Control_4_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_45_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Positive_Control_4_Nanopore",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Negative_Control_Nanopore"))

subsample <- column_to_rownames(subsample, var = "Sample_ID")

# Select the top 10 most abundant species.
x <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- 10
taxa_list<-colnames(x)[1:N]
N<-length(taxa_list)
x<-data.frame(x[,colnames(x) %in% taxa_list])
x

# Select all the other species.
z <- subsample[,order(colSums(subsample),decreasing=TRUE)]
N <- length(merged_final_ordered_transposed)
taxa_list2<-colnames(z)[11:N]
N<-length(taxa_list2)
z<-data.frame(z[,colnames(z) %in% taxa_list2])
z

# Sum the percentages for all the other species into one column.
other <- rowSums(z)
other <- as.data.frame(other)
other

# Bind together the top 10 species and the "other" column.
x_other_46 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_46 <- rownames_to_column(x_other_46, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_46_long <- melt(x_other_46, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_46_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Acinetobacter.baumannii = "blue1",
                    Corynebacterium.striatum = "red",
                    Staphylococcus.epidermidis = "purple",
                    Staphylococcus.hominis = "cadetblue1",
                    Micrococcus.luteus = "green4",
                    Cutibacterium.acnes = "yellow",
                    Streptococcus.mitis = "black",
                    Staphylococcus.capitis = "darkolivegreen1",
                    Acinetobacter.radioresistens = "red4",
                    Staphylococcus.haemolyticus = "sienna4",
                    other = "grey")

x_other_46_long <- subset(x_other_46_long, Sample_ID %in% c("Negative_Control_Nanopore"))

# organise x axis how you want
x.order <- c("Negative_Control_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_46_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Negative_Control_Nanopore",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=10),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=6, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=8),
        axis.title.x = element_text(size=8),
        #Define the axis title text size
        axis.title = element_text(size=8),
        #Define the axis label text size
        axis.text.y = element_text(size=8),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 8, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )




# Combine Figures

x_other_47_long <- rbind.data.frame(x_other_long, x_other_1_long, x_other_2_long, x_other_3_long, 
                                    x_other_4_long, x_other_5_long, x_other_6_long, x_other_7_long, 
                                    x_other_8_long, x_other_9_long, x_other_10_long, x_other_11_long,
                                    x_other_12_long, x_other_13_long, x_other_14_long, x_other_15_long, 
                                    x_other_16_long, x_other_17_long, x_other_18_long, x_other_19_long,
                                    x_other_20_long, x_other_21_long, x_other_22_long, x_other_23_long, 
                                    x_other_24_long, x_other_25_long, x_other_26_long, x_other_27_long, 
                                    x_other_28_long, x_other_29_long, x_other_30_long, x_other_31_long, 
                                    x_other_32_long, x_other_33_long, x_other_34_long, x_other_35_long, 
                                    x_other_36_long, x_other_37_long, x_other_38_long, x_other_39_long, 
                                    x_other_40_long, x_other_41_long, x_other_42_long, x_other_43_long, 
                                    x_other_44_long, x_other_45_long, x_other_46_long)

# Find out all the species to be plotted
unique(x_other_47_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Cutibacterium.acnes = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Staphylococcus.hominis = "purple",
                    Pseudomonas.putida = "cadetblue1",
                    Staphylococcus.capitis = "green4",
                    Serratia.marcescens  = "yellow",
                    Finegoldia.magna = "black",
                    Fervidobacterium.pennivorans = "darkolivegreen1",
                    Corynebacterium.ureicelerivorans = "red4",
                    Staphylococcus.auricularis = "sienna4",
                    Acinetobacter.lwoffii = "dimgray",                          
                    Acinetobacter.baumannii = "blue4",                                      
                    Acinetobacter.sp..ACNIH1  = "blueviolet",                       
                    Acinetobacter.haemolyticus = "plum",
                    Moraxella.osloensis = "brown4",                              
                    Staphylococcus.saprophyticus = "green3",                     
                    Gordonia.bronchialis = "cornflowerblue",
                    Microbacterium.aurum = "chocolate",             
                    Corynebacterium.striatum = "chocolate1",           
                    Corynebacterium.simulans = "darkmagenta",                
                    Kocuria.rhizophila = "khaki4",           
                    Paracoccus.yeei ="cyan4",              
                    Micrococcus.luteus = "cyan",             
                    Klebsiella.pneumoniae = "deepskyblue",   
                    Staphylococcus.haemolyticus = "deeppink",           
                    Acinetobacter.johnsonii = "deeppink3",    
                    Acinetobacter.junii = "darkolivegreen3",          
                    Acinetobacter.pittii = "darkred",            
                    Acinetobacter.schindleri = "palegreen",         
                    Achromobacter.xylosoxidans = "#ffc425",               
                    Acinetobacter.sp..ACNIH2 = "#f37735",       
                    Xanthomonas.campestris = "wheat",      
                    Bifidobacterium.longum = "#d11141",
                    Staphylococcus.cohnii = "yellow3",               
                    Acinetobacter.radioresistens = "tan",               
                    Erwinia.gerundensis = "salmon",              
                    Lactobacillus.jensenii = "#E76BF3",              
                    Tatumella.ptyseos = "#529EFF",            
                    Streptococcus.mitis = "khaki", 
                    Acinetobacter.calcoaceticus = "#00C08D",  
                    Acinetobacter.nosocomialis = "#00b159",        
                    Dietzia.sp..oral.taxon.368 = "#72B000",        
                    Micrococcus.sp..A1 = "salmon3",      
                    Acinetobacter.phage.vB_AbaS_TRS1 = "#F8766D",
                    Pluralibacter.gergoviae = "#9590FF",                  
                    Streptococcus.pneumoniae = "darkgoldenrod1",               
                    Pseudomonas.oryzihabitans = "brown3",         
                    Pseudomonas.aeruginosa = "burlywood1",               
                    Pseudomonas.psychrotolerans = "brown1",       
                    Kocuria.palustris = "cadetblue3",       
                    Leuconostoc.citreum = "#E64B35B2",        
                    Streptococcus.thermophilus = "#3C5488B2",      
                    Fusobacterium.nucleatum = "#F39B7FB2",       
                    Streptococcus.salivarius = "tomato",       
                    Streptococcus.pseudopneumoniae = "#4DBBD5B2",     
                    Streptococcus.oralis = "#8491B4B2",            
                    Muribaculum.intestinale = "#91D1C2B2",        
                    Faecalibaculum.rodentium = "#DC0000B2",             
                    other = "grey")


# Order x axis labels

x.order <- c("Volunteer_1_Swab_1_Illumina","Volunteer_1_Swab_1_Nanopore", 
             "Volunteer_1_Swab_2_Illumina","Volunteer_1_Swab_2_Nanopore",
             "Volunteer_2_Swab_1_Illumina","Volunteer_2_Swab_1_Nanopore",
             "Volunteer_2_Swab_2_Illumina","Volunteer_2_Swab_2_Nanopore",
             "Volunteer_3_Swab_1_Illumina","Volunteer_3_Swab_1_Nanopore",
             "Volunteer_3_Swab_2_Illumina","Volunteer_3_Swab_2_Nanopore",
             "Volunteer_4_Swab_1_Illumina","Volunteer_4_Swab_1_Nanopore",
             "Volunteer_4_Swab_2_Illumina","Volunteer_4_Swab_2_Nanopore",
             "Volunteer_5_Swab_1_Illumina","Volunteer_5_Swab_1_Nanopore",
             "Volunteer_5_Swab_2_Illumina","Volunteer_5_Swab_2_Nanopore",
             "Volunteer_6_Swab_1_Illumina","Volunteer_6_Swab_1_Nanopore",
             "Volunteer_6_Swab_2_Illumina","Volunteer_6_Swab_2_Nanopore",
             "Volunteer_7_Swab_1_Illumina","Volunteer_7_Swab_1_Nanopore",
             "Volunteer_7_Swab_2_Illumina","Volunteer_7_Swab_2_Nanopore",
             "Volunteer_8_Swab_1_Illumina","Volunteer_8_Swab_1_Nanopore",
             "Volunteer_8_Swab_2_Illumina","Volunteer_8_Swab_2_Nanopore",
             "Volunteer_9_Swab_1_Illumina","Volunteer_9_Swab_1_Nanopore",
             "Volunteer_9_Swab_2_Illumina","Volunteer_9_Swab_2_Nanopore",
             "Volunteer_10_Swab_1_Illumina","Volunteer_10_Swab_1_Nanopore",
             "Volunteer_10_Swab_2_Illumina","Volunteer_10_Swab_2_Nanopore",
             "Volunteer_11_Swab_1_Illumina","Volunteer_11_Swab_1_Nanopore",
             "Volunteer_11_Swab_2_Illumina","Volunteer_11_Swab_2_Nanopore",
             "Volunteer_12_Swab_1_Illumina","Volunteer_12_Swab_1_Nanopore",
             "Volunteer_12_Swab_2_Illumina","Volunteer_12_Swab_2_Nanopore",
             "Positive_Control_1_Illumina", "Positive_Control_1_Nanopore",
             "Positive_Control_2_Illumina","Positive_Control_2_Nanopore",
             "Positive_Control_3_Illumina", "Positive_Control_3_Nanopore",
             "Positive_Control_4_Illumina", "Positive_Control_4_Nanopore",
             "Negative_Control_Illumina","Negative_Control_Nanopore")

# Plot the individual plots into one plot

ggplot(x_other_47_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0), limits=c(0, 100.1)) +
  scale_x_discrete(expand = c(0, 0), limits=x.order) +
  labs(title="Skin Microbiota Relative Abundance",
       x = "Sample ID",
       y="Relative Abundance (%)") +
  theme(plot.title = element_text(size=20),
        legend.position = "right",
        #legend.position="none",
        #Remove the legend title
        legend.title = element_blank(),
        #Define the size of the legend text
        legend.text = element_text(size=12, face = "italic"),
        #Remove the grey background
        legend.background = element_blank(),
        #Remove the box from the legend
        legend.key = element_blank(),
        #Remove the grey background
        panel.background = element_blank(),
        #Remove the plot border
        panel.border = element_blank(),
        panel.spacing = unit(.3, "cm"),
        #Remove the major plot gridlines
        panel.grid.major = element_blank(),
        #Remove the minor plot gridlines
        panel.grid.minor = element_blank(),
        #Change orientation of x axis labels
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5, size=12),
        axis.title.x = element_text(size=20),
        #Define the axis title text size
        axis.title = element_text(size=20),
        #Define the axis label text size
        axis.text.y = element_text(size=12),
        #Add back the x and y axis lines and define thinkness, style, and colour
        axis.line = element_line(size = 0.35, linetype = "solid", colour = "black"),
        strip.text.x = element_text(size = 12, colour = "black", angle = 0),
        strip.background = element_rect(colour="grey70", fill=NA),
        aspect.ratio = 1
  )
