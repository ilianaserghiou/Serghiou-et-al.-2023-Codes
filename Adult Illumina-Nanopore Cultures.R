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
setwd("C:/Users/serghioi/Documents/QIB/PhD - Development and Evolution Of The Infant Skin Microbiome/Data Collection/DNA Extrac. Method Development/Data Plots/Promega Maxwell FMH Volunteer Swabs Extraction Run 4/Illumina Cult vs Nanopore Cult")

###################################################################################################

# Import the csv file.
Volunteer_1_Swab_1_Culture_Illumina <- read_csv("0754-Culture-1.csv")

# Select only the "name" and "fraction_total_reads" columns.
Volunteer_1_Swab_1_Culture_Illumina <- Volunteer_1_Swab_1_Culture_Illumina %>%
  select(name,
         fraction_total_reads)

# Rename the "fraction_total_reads" column as the sample Id name.
names(Volunteer_1_Swab_1_Culture_Illumina)[names(Volunteer_1_Swab_1_Culture_Illumina) == "fraction_total_reads"] <- "Volunteer_1_Swab_1_Culture_Illumina"

# Repeat with the other csv files.

Volunteer_1_Swab_2_Culture_Illumina <- read_csv("0754-Culture-2.csv")

Volunteer_1_Swab_2_Culture_Illumina <- Volunteer_1_Swab_2_Culture_Illumina %>%
  select(name,
         fraction_total_reads)

names(Volunteer_1_Swab_2_Culture_Illumina)[names(Volunteer_1_Swab_2_Culture_Illumina) == "fraction_total_reads"] <- "Volunteer_1_Swab_2_Culture_Illumina"


Volunteer_2_Swab_1_Culture_Illumina <- read_csv("0754-Culture-3.csv")

Volunteer_2_Swab_1_Culture_Illumina <- Volunteer_2_Swab_1_Culture_Illumina %>%
  select(name,
         fraction_total_reads)

names(Volunteer_2_Swab_1_Culture_Illumina)[names(Volunteer_2_Swab_1_Culture_Illumina) == "fraction_total_reads"] <- "Volunteer_2_Swab_1_Culture_Illumina"


Volunteer_2_Swab_2_Culture_Illumina <- read_csv("0754-Culture-4.csv")

Volunteer_2_Swab_2_Culture_Illumina <- Volunteer_2_Swab_2_Culture_Illumina %>%
  select(name,
         fraction_total_reads)

names(Volunteer_2_Swab_2_Culture_Illumina)[names(Volunteer_2_Swab_2_Culture_Illumina) == "fraction_total_reads"] <- "Volunteer_2_Swab_2_Culture_Illumina"


Volunteer_3_Swab_1_Culture_Illumina <- read_csv("0754-Culture-5.csv")

Volunteer_3_Swab_1_Culture_Illumina <- Volunteer_3_Swab_1_Culture_Illumina %>%
  select(name,
         fraction_total_reads)

names(Volunteer_3_Swab_1_Culture_Illumina)[names(Volunteer_3_Swab_1_Culture_Illumina) == "fraction_total_reads"] <- "Volunteer_3_Swab_1_Culture_Illumina"


Volunteer_3_Swab_2_Culture_Illumina <- read_csv("0754-Culture-6.csv")

Volunteer_3_Swab_2_Culture_Illumina <- Volunteer_3_Swab_2_Culture_Illumina %>%
  select(name,
         fraction_total_reads)

names(Volunteer_3_Swab_2_Culture_Illumina)[names(Volunteer_3_Swab_2_Culture_Illumina) == "fraction_total_reads"] <- "Volunteer_3_Swab_2_Culture_Illumina"


Volunteer_4_Swab_1_Culture_Illumina <- read_csv("0754-Culture-7.csv")

Volunteer_4_Swab_1_Culture_Illumina <- Volunteer_4_Swab_1_Culture_Illumina %>%
  select(name,
         fraction_total_reads)

names(Volunteer_4_Swab_1_Culture_Illumina)[names(Volunteer_4_Swab_1_Culture_Illumina) == "fraction_total_reads"] <- "Volunteer_4_Swab_1_Culture_Illumina"


Volunteer_4_Swab_2_Culture_Illumina <- read_csv("0754-Culture-8.csv")

Volunteer_4_Swab_2_Culture_Illumina <- Volunteer_4_Swab_2_Culture_Illumina %>%
  select(name,
         fraction_total_reads)

names(Volunteer_4_Swab_2_Culture_Illumina)[names(Volunteer_4_Swab_2_Culture_Illumina) == "fraction_total_reads"] <- "Volunteer_4_Swab_2_Culture_Illumina"


Volunteer_5_Swab_1_Culture_Illumina <- read_csv("0754-Culture-9.csv")

Volunteer_5_Swab_1_Culture_Illumina <- Volunteer_5_Swab_1_Culture_Illumina %>%
  select(name,
         fraction_total_reads)

names(Volunteer_5_Swab_1_Culture_Illumina)[names(Volunteer_5_Swab_1_Culture_Illumina) == "fraction_total_reads"] <- "Volunteer_5_Swab_1_Culture_Illumina"


Volunteer_5_Swab_2_Culture_Illumina <- read_csv("0754-Culture-10.csv")

Volunteer_5_Swab_2_Culture_Illumina <- Volunteer_5_Swab_2_Culture_Illumina %>%
  select(name,
         fraction_total_reads)

names(Volunteer_5_Swab_2_Culture_Illumina)[names(Volunteer_5_Swab_2_Culture_Illumina) == "fraction_total_reads"] <- "Volunteer_5_Swab_2_Culture_Illumina"


Volunteer_6_Swab_1_Culture_Illumina <- read_csv("0754-Culture-11.csv")

Volunteer_6_Swab_1_Culture_Illumina <- Volunteer_6_Swab_1_Culture_Illumina %>%
  select(name,
         fraction_total_reads)

names(Volunteer_6_Swab_1_Culture_Illumina)[names(Volunteer_6_Swab_1_Culture_Illumina) == "fraction_total_reads"] <- "Volunteer_6_Swab_1_Culture_Illumina"


Volunteer_6_Swab_2_Culture_Illumina <- read_csv("0754-Culture-12.csv")

Volunteer_6_Swab_2_Culture_Illumina <- Volunteer_6_Swab_2_Culture_Illumina %>%
  select(name,
         fraction_total_reads)

names(Volunteer_6_Swab_2_Culture_Illumina)[names(Volunteer_6_Swab_2_Culture_Illumina) == "fraction_total_reads"] <- "Volunteer_6_Swab_2_Culture_Illumina"


Volunteer_7_Swab_1_Culture_Illumina <- read_csv("0754-Culture-13.csv")

Volunteer_7_Swab_1_Culture_Illumina <- Volunteer_7_Swab_1_Culture_Illumina %>%
  select(name,
         fraction_total_reads)

names(Volunteer_7_Swab_1_Culture_Illumina)[names(Volunteer_7_Swab_1_Culture_Illumina) == "fraction_total_reads"] <- "Volunteer_7_Swab_1_Culture_Illumina"


Volunteer_7_Swab_2_Culture_Illumina <- read_csv("0754-Culture-14.csv")

Volunteer_7_Swab_2_Culture_Illumina <- Volunteer_7_Swab_2_Culture_Illumina %>%
  select(name,
         fraction_total_reads)

names(Volunteer_7_Swab_2_Culture_Illumina)[names(Volunteer_7_Swab_2_Culture_Illumina) == "fraction_total_reads"] <- "Volunteer_7_Swab_2_Culture_Illumina"


Volunteer_8_Swab_1_Culture_Illumina <- read_csv("0754-Culture-15.csv")

Volunteer_8_Swab_1_Culture_Illumina <- Volunteer_8_Swab_1_Culture_Illumina %>%
  select(name,
         fraction_total_reads)

names(Volunteer_8_Swab_1_Culture_Illumina)[names(Volunteer_8_Swab_1_Culture_Illumina) == "fraction_total_reads"] <- "Volunteer_8_Swab_1_Culture_Illumina"


Volunteer_8_Swab_2_Culture_Illumina <- read_csv("0754-Culture-16.csv")

Volunteer_8_Swab_2_Culture_Illumina <- Volunteer_8_Swab_2_Culture_Illumina %>%
  select(name,
         fraction_total_reads)

names(Volunteer_8_Swab_2_Culture_Illumina)[names(Volunteer_8_Swab_2_Culture_Illumina) == "fraction_total_reads"] <- "Volunteer_8_Swab_2_Culture_Illumina"


Volunteer_9_Swab_1_Culture_Illumina <- read_csv("0754-Culture-17.csv")

Volunteer_9_Swab_1_Culture_Illumina <- Volunteer_9_Swab_1_Culture_Illumina %>%
  select(name,
         fraction_total_reads)

names(Volunteer_9_Swab_1_Culture_Illumina)[names(Volunteer_9_Swab_1_Culture_Illumina) == "fraction_total_reads"] <- "Volunteer_9_Swab_1_Culture_Illumina"


Volunteer_9_Swab_2_Culture_Illumina <- read_csv("0754-Culture-18.csv")

Volunteer_9_Swab_2_Culture_Illumina <- Volunteer_9_Swab_2_Culture_Illumina %>%
  select(name,
         fraction_total_reads)

names(Volunteer_9_Swab_2_Culture_Illumina)[names(Volunteer_9_Swab_2_Culture_Illumina) == "fraction_total_reads"] <- "Volunteer_9_Swab_2_Culture_Illumina"


Volunteer_10_Swab_1_Culture_Illumina <- read_csv("0754-Culture-19.csv")

Volunteer_10_Swab_1_Culture_Illumina <- Volunteer_10_Swab_1_Culture_Illumina %>%
  select(name,
         fraction_total_reads)

names(Volunteer_10_Swab_1_Culture_Illumina)[names(Volunteer_10_Swab_1_Culture_Illumina) == "fraction_total_reads"] <- "Volunteer_10_Swab_1_Culture_Illumina"


Volunteer_10_Swab_2_Culture_Illumina <- read_csv("0754-Culture-20.csv")

Volunteer_10_Swab_2_Culture_Illumina <- Volunteer_10_Swab_2_Culture_Illumina %>%
  select(name,
         fraction_total_reads)

names(Volunteer_10_Swab_2_Culture_Illumina)[names(Volunteer_10_Swab_2_Culture_Illumina) == "fraction_total_reads"] <- "Volunteer_10_Swab_2_Culture_Illumina"


Volunteer_11_Swab_1_Culture_Illumina <- read_csv("0754-Culture-21.csv")

Volunteer_11_Swab_1_Culture_Illumina <- Volunteer_11_Swab_1_Culture_Illumina %>%
  select(name,
         fraction_total_reads)

names(Volunteer_11_Swab_1_Culture_Illumina)[names(Volunteer_11_Swab_1_Culture_Illumina) == "fraction_total_reads"] <- "Volunteer_11_Swab_1_Culture_Illumina"


Volunteer_11_Swab_2_Culture_Illumina <- read_csv("0754-Culture-22.csv")

Volunteer_11_Swab_2_Culture_Illumina <- Volunteer_11_Swab_2_Culture_Illumina %>%
  select(name,
         fraction_total_reads)

names(Volunteer_11_Swab_2_Culture_Illumina)[names(Volunteer_11_Swab_2_Culture_Illumina) == "fraction_total_reads"] <- "Volunteer_11_Swab_2_Culture_Illumina"


Volunteer_12_Swab_1_Culture_Illumina <- read_csv("0754-Culture-23.csv")

Volunteer_12_Swab_1_Culture_Illumina <- Volunteer_12_Swab_1_Culture_Illumina %>%
  select(name,
         fraction_total_reads)

names(Volunteer_12_Swab_1_Culture_Illumina)[names(Volunteer_12_Swab_1_Culture_Illumina) == "fraction_total_reads"] <- "Volunteer_12_Swab_1_Culture_Illumina"


Volunteer_12_Swab_2_Culture_Illumina <- read_csv("0754-Culture-24.csv")

Volunteer_12_Swab_2_Culture_Illumina <- Volunteer_12_Swab_2_Culture_Illumina %>%
  select(name,
         fraction_total_reads)

names(Volunteer_12_Swab_2_Culture_Illumina)[names(Volunteer_12_Swab_2_Culture_Illumina) == "fraction_total_reads"] <- "Volunteer_12_Swab_2_Culture_Illumina"


Positive_Control_Illumina <- read_csv("0754-Pos-Con.csv")

Positive_Control_Illumina <- Positive_Control_Illumina %>%
  select(name,
         fraction_total_reads)

names(Positive_Control_Illumina)[names(Positive_Control_Illumina) == "fraction_total_reads"] <- "Positive_Control_Illumina"


Negative_Control_Illumina <- read_csv("0754-Neg-Con.csv")

Negative_Control_Illumina <- Negative_Control_Illumina %>%
  select(name,
         fraction_total_reads)

names(Negative_Control_Illumina)[names(Negative_Control_Illumina) == "fraction_total_reads"] <- "Negative_Control_Illumina"


Volunteer_1_Swab_1_Culture_Nanopore <- read_csv("0755-Culture-1.csv")

Volunteer_1_Swab_1_Culture_Nanopore <- Volunteer_1_Swab_1_Culture_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Volunteer_1_Swab_1_Culture_Nanopore)[names(Volunteer_1_Swab_1_Culture_Nanopore) == "fraction_total_reads"] <- "Volunteer_1_Swab_1_Culture_Nanopore"


Volunteer_1_Swab_2_Culture_Nanopore <- read_csv("0755-Culture-2.csv")

Volunteer_1_Swab_2_Culture_Nanopore <- Volunteer_1_Swab_2_Culture_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Volunteer_1_Swab_2_Culture_Nanopore)[names(Volunteer_1_Swab_2_Culture_Nanopore) == "fraction_total_reads"] <- "Volunteer_1_Swab_2_Culture_Nanopore"


Volunteer_2_Swab_1_Culture_Nanopore <- read_csv("0755-Culture-3.csv")

Volunteer_2_Swab_1_Culture_Nanopore <- Volunteer_2_Swab_1_Culture_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Volunteer_2_Swab_1_Culture_Nanopore)[names(Volunteer_2_Swab_1_Culture_Nanopore) == "fraction_total_reads"] <- "Volunteer_2_Swab_1_Culture_Nanopore"


Volunteer_2_Swab_2_Culture_Nanopore <- read_csv("0755-Culture-4.csv")

Volunteer_2_Swab_2_Culture_Nanopore <- Volunteer_2_Swab_2_Culture_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Volunteer_2_Swab_2_Culture_Nanopore)[names(Volunteer_2_Swab_2_Culture_Nanopore) == "fraction_total_reads"] <- "Volunteer_2_Swab_2_Culture_Nanopore"


Volunteer_3_Swab_1_Culture_Nanopore <- read_csv("0755-Culture-5.csv")

Volunteer_3_Swab_1_Culture_Nanopore <- Volunteer_3_Swab_1_Culture_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Volunteer_3_Swab_1_Culture_Nanopore)[names(Volunteer_3_Swab_1_Culture_Nanopore) == "fraction_total_reads"] <- "Volunteer_3_Swab_1_Culture_Nanopore"


Volunteer_3_Swab_2_Culture_Nanopore <- read_csv("0755-Culture-6.csv")

Volunteer_3_Swab_2_Culture_Nanopore <- Volunteer_3_Swab_2_Culture_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Volunteer_3_Swab_2_Culture_Nanopore)[names(Volunteer_3_Swab_2_Culture_Nanopore) == "fraction_total_reads"] <- "Volunteer_3_Swab_2_Culture_Nanopore"


Volunteer_4_Swab_1_Culture_Nanopore <- read_csv("0755-Culture-7.csv")

Volunteer_4_Swab_1_Culture_Nanopore <- Volunteer_4_Swab_1_Culture_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Volunteer_4_Swab_1_Culture_Nanopore)[names(Volunteer_4_Swab_1_Culture_Nanopore) == "fraction_total_reads"] <- "Volunteer_4_Swab_1_Culture_Nanopore"


Volunteer_4_Swab_2_Culture_Nanopore <- read_csv("0755-Culture-8.csv")

Volunteer_4_Swab_2_Culture_Nanopore <- Volunteer_4_Swab_2_Culture_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Volunteer_4_Swab_2_Culture_Nanopore)[names(Volunteer_4_Swab_2_Culture_Nanopore) == "fraction_total_reads"] <- "Volunteer_4_Swab_2_Culture_Nanopore"


Volunteer_5_Swab_1_Culture_Nanopore <- read_csv("0755-Culture-9.csv")

Volunteer_5_Swab_1_Culture_Nanopore <- Volunteer_5_Swab_1_Culture_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Volunteer_5_Swab_1_Culture_Nanopore)[names(Volunteer_5_Swab_1_Culture_Nanopore) == "fraction_total_reads"] <- "Volunteer_5_Swab_1_Culture_Nanopore"


Volunteer_5_Swab_2_Culture_Nanopore <- read_csv("0755-Culture-10.csv")

Volunteer_5_Swab_2_Culture_Nanopore <- Volunteer_5_Swab_2_Culture_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Volunteer_5_Swab_2_Culture_Nanopore)[names(Volunteer_5_Swab_2_Culture_Nanopore) == "fraction_total_reads"] <- "Volunteer_5_Swab_2_Culture_Nanopore"


Volunteer_6_Swab_1_Culture_Nanopore <- read_csv("0755-Culture-11.csv")

Volunteer_6_Swab_1_Culture_Nanopore <- Volunteer_6_Swab_1_Culture_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Volunteer_6_Swab_1_Culture_Nanopore)[names(Volunteer_6_Swab_1_Culture_Nanopore) == "fraction_total_reads"] <- "Volunteer_6_Swab_1_Culture_Nanopore"


Volunteer_6_Swab_2_Culture_Nanopore <- read_csv("0755-Culture-12.csv")

Volunteer_6_Swab_2_Culture_Nanopore <- Volunteer_6_Swab_2_Culture_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Volunteer_6_Swab_2_Culture_Nanopore)[names(Volunteer_6_Swab_2_Culture_Nanopore) == "fraction_total_reads"] <- "Volunteer_6_Swab_2_Culture_Nanopore"


Volunteer_7_Swab_1_Culture_Nanopore <- read_csv("0755-Culture-13.csv")

Volunteer_7_Swab_1_Culture_Nanopore <- Volunteer_7_Swab_1_Culture_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Volunteer_7_Swab_1_Culture_Nanopore)[names(Volunteer_7_Swab_1_Culture_Nanopore) == "fraction_total_reads"] <- "Volunteer_7_Swab_1_Culture_Nanopore"


Volunteer_7_Swab_2_Culture_Nanopore <- read_csv("0755-Culture-14.csv")

Volunteer_7_Swab_2_Culture_Nanopore <- Volunteer_7_Swab_2_Culture_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Volunteer_7_Swab_2_Culture_Nanopore)[names(Volunteer_7_Swab_2_Culture_Nanopore) == "fraction_total_reads"] <- "Volunteer_7_Swab_2_Culture_Nanopore"


Volunteer_8_Swab_1_Culture_Nanopore <- read_csv("0755-Culture-15.csv")

Volunteer_8_Swab_1_Culture_Nanopore <- Volunteer_8_Swab_1_Culture_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Volunteer_8_Swab_1_Culture_Nanopore)[names(Volunteer_8_Swab_1_Culture_Nanopore) == "fraction_total_reads"] <- "Volunteer_8_Swab_1_Culture_Nanopore"


Volunteer_8_Swab_2_Culture_Nanopore <- read_csv("0755-Culture-16.csv")

Volunteer_8_Swab_2_Culture_Nanopore <- Volunteer_8_Swab_2_Culture_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Volunteer_8_Swab_2_Culture_Nanopore)[names(Volunteer_8_Swab_2_Culture_Nanopore) == "fraction_total_reads"] <- "Volunteer_8_Swab_2_Culture_Nanopore"


Volunteer_9_Swab_1_Culture_Nanopore <- read_csv("0755-Culture-17.csv")

Volunteer_9_Swab_1_Culture_Nanopore <- Volunteer_9_Swab_1_Culture_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Volunteer_9_Swab_1_Culture_Nanopore)[names(Volunteer_9_Swab_1_Culture_Nanopore) == "fraction_total_reads"] <- "Volunteer_9_Swab_1_Culture_Nanopore"


Volunteer_9_Swab_2_Culture_Nanopore <- read_csv("0755-Culture-18.csv")

Volunteer_9_Swab_2_Culture_Nanopore <- Volunteer_9_Swab_2_Culture_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Volunteer_9_Swab_2_Culture_Nanopore)[names(Volunteer_9_Swab_2_Culture_Nanopore) == "fraction_total_reads"] <- "Volunteer_9_Swab_2_Culture_Nanopore"


Volunteer_10_Swab_1_Culture_Nanopore <- read_csv("0755-Culture-19.csv")

Volunteer_10_Swab_1_Culture_Nanopore <- Volunteer_10_Swab_1_Culture_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Volunteer_10_Swab_1_Culture_Nanopore)[names(Volunteer_10_Swab_1_Culture_Nanopore) == "fraction_total_reads"] <- "Volunteer_10_Swab_1_Culture_Nanopore"


Volunteer_10_Swab_2_Culture_Nanopore <- read_csv("0755-Culture-20.csv")

Volunteer_10_Swab_2_Culture_Nanopore <- Volunteer_10_Swab_2_Culture_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Volunteer_10_Swab_2_Culture_Nanopore)[names(Volunteer_10_Swab_2_Culture_Nanopore) == "fraction_total_reads"] <- "Volunteer_10_Swab_2_Culture_Nanopore"


Volunteer_11_Swab_1_Culture_Nanopore <- read_csv("0755-Culture-21.csv")

Volunteer_11_Swab_1_Culture_Nanopore <- Volunteer_11_Swab_1_Culture_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Volunteer_11_Swab_1_Culture_Nanopore)[names(Volunteer_11_Swab_1_Culture_Nanopore) == "fraction_total_reads"] <- "Volunteer_11_Swab_1_Culture_Nanopore"


Volunteer_11_Swab_2_Culture_Nanopore <- read_csv("0755-Culture-22.csv")

Volunteer_11_Swab_2_Culture_Nanopore <- Volunteer_11_Swab_2_Culture_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Volunteer_11_Swab_2_Culture_Nanopore)[names(Volunteer_11_Swab_2_Culture_Nanopore) == "fraction_total_reads"] <- "Volunteer_11_Swab_2_Culture_Nanopore"


Volunteer_12_Swab_1_Culture_Nanopore <- read_csv("0755-Culture-23.csv")

Volunteer_12_Swab_1_Culture_Nanopore <- Volunteer_12_Swab_1_Culture_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Volunteer_12_Swab_1_Culture_Nanopore)[names(Volunteer_12_Swab_1_Culture_Nanopore) == "fraction_total_reads"] <- "Volunteer_12_Swab_1_Culture_Nanopore"


Volunteer_12_Swab_2_Culture_Nanopore <- read_csv("0755-Culture-24.csv")

Volunteer_12_Swab_2_Culture_Nanopore <- Volunteer_12_Swab_2_Culture_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Volunteer_12_Swab_2_Culture_Nanopore)[names(Volunteer_12_Swab_2_Culture_Nanopore) == "fraction_total_reads"] <- "Volunteer_12_Swab_2_Culture_Nanopore"


Positive_Control_Nanopore <- read_csv("0755-Pos-Con.csv")

Positive_Control_Nanopore <- Positive_Control_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Positive_Control_Nanopore)[names(Positive_Control_Nanopore) == "fraction_total_reads"] <- "Positive_Control_Nanopore"


Negative_Control_Nanopore <- read_csv("0755-Neg-Con.csv")

Negative_Control_Nanopore <- Negative_Control_Nanopore %>%
  select(name,
         fraction_total_reads)

names(Negative_Control_Nanopore)[names(Negative_Control_Nanopore) == "fraction_total_reads"] <- "Negative_Control_Nanopore"


# R can only merge two files each time.
# Merge the files together using the species "name" column.

merged_final <- Volunteer_1_Swab_1_Culture_Illumina %>%
  full_join(Volunteer_1_Swab_2_Culture_Illumina, by='name') %>%
  full_join(Volunteer_2_Swab_1_Culture_Illumina, by='name') %>%
  full_join(Volunteer_2_Swab_2_Culture_Illumina, by='name') %>%
  full_join(Volunteer_3_Swab_1_Culture_Illumina, by='name') %>%
  full_join(Volunteer_3_Swab_2_Culture_Illumina, by='name') %>%
  full_join(Volunteer_4_Swab_1_Culture_Illumina, by='name') %>%
  full_join(Volunteer_4_Swab_2_Culture_Illumina, by='name') %>%
  full_join(Volunteer_5_Swab_1_Culture_Illumina, by='name') %>%
  full_join(Volunteer_5_Swab_2_Culture_Illumina, by='name') %>%
  full_join(Volunteer_6_Swab_1_Culture_Illumina, by='name') %>%
  full_join(Volunteer_6_Swab_2_Culture_Illumina, by='name') %>%
  full_join(Volunteer_7_Swab_1_Culture_Illumina, by='name') %>%
  full_join(Volunteer_7_Swab_2_Culture_Illumina, by='name') %>%
  full_join(Volunteer_8_Swab_1_Culture_Illumina, by='name') %>%
  full_join(Volunteer_8_Swab_2_Culture_Illumina, by='name') %>%
  full_join(Volunteer_9_Swab_1_Culture_Illumina, by='name') %>%
  full_join(Volunteer_9_Swab_2_Culture_Illumina, by='name') %>%
  full_join(Volunteer_10_Swab_1_Culture_Illumina, by='name') %>%
  full_join(Volunteer_10_Swab_2_Culture_Illumina, by='name') %>%
  full_join(Volunteer_11_Swab_1_Culture_Illumina, by='name') %>%
  full_join(Volunteer_11_Swab_2_Culture_Illumina, by='name') %>%
  full_join(Volunteer_12_Swab_1_Culture_Illumina, by='name') %>%
  full_join(Volunteer_12_Swab_2_Culture_Illumina, by='name') %>%
  full_join(Positive_Control_Illumina, by='name') %>%
  full_join(Negative_Control_Illumina, by='name') %>%
  full_join(Volunteer_1_Swab_1_Culture_Nanopore, by='name') %>%
  full_join(Volunteer_1_Swab_2_Culture_Nanopore, by='name') %>%
  full_join(Volunteer_2_Swab_1_Culture_Nanopore, by='name') %>%
  full_join(Volunteer_2_Swab_2_Culture_Nanopore, by='name') %>%
  full_join(Volunteer_3_Swab_1_Culture_Nanopore, by='name') %>%
  full_join(Volunteer_3_Swab_2_Culture_Nanopore, by='name') %>%
  full_join(Volunteer_4_Swab_1_Culture_Nanopore, by='name') %>%
  full_join(Volunteer_4_Swab_2_Culture_Nanopore, by='name') %>%
  full_join(Volunteer_5_Swab_1_Culture_Nanopore, by='name') %>%
  full_join(Volunteer_5_Swab_2_Culture_Nanopore, by='name') %>%
  full_join(Volunteer_6_Swab_1_Culture_Nanopore, by='name') %>%
  full_join(Volunteer_6_Swab_2_Culture_Nanopore, by='name') %>%
  full_join(Volunteer_7_Swab_1_Culture_Nanopore, by='name') %>%
  full_join(Volunteer_7_Swab_2_Culture_Nanopore, by='name') %>%
  full_join(Volunteer_8_Swab_1_Culture_Nanopore, by='name') %>%
  full_join(Volunteer_8_Swab_2_Culture_Nanopore, by='name') %>%
  full_join(Volunteer_9_Swab_1_Culture_Nanopore, by='name') %>%
  full_join(Volunteer_9_Swab_2_Culture_Nanopore, by='name') %>%
  full_join(Volunteer_10_Swab_1_Culture_Nanopore, by='name') %>%
  full_join(Volunteer_10_Swab_2_Culture_Nanopore, by='name') %>%
  full_join(Volunteer_11_Swab_1_Culture_Nanopore, by='name') %>%
  full_join(Volunteer_11_Swab_2_Culture_Nanopore, by='name') %>%
  full_join(Volunteer_12_Swab_1_Culture_Nanopore, by='name') %>%
  full_join(Volunteer_12_Swab_2_Culture_Nanopore, by='name') %>%
  full_join(Positive_Control_Nanopore, by='name') %>%
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
  filter(Sample_ID %in% c("Volunteer_1_Swab_1_Culture_Illumina"))

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
speciesPalette <- c(Staphylococcus.hominis = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Bacillus.sp..FJAT.14266 = "purple",
                    Bacillus.subtilis = "cadetblue1",
                    Staphylococcus.haemolyticus = "green4",
                    Bacillus.sp..LM.4.2 = "yellow",
                    Staphylococcus.aureus = "black",
                    Staphylococcus.capitis = "darkolivegreen1",
                    Staphylococcus.lugdunensis = "red4",
                    Bacillus.gibsonii = "sienna4",
                    other = "grey")

x_other_long <- subset(x_other_long, Sample_ID %in% c("Volunteer_1_Swab_1_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_1_Swab_1_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_1_Swab_1_Culture_Illumina",
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
  filter(Sample_ID %in% c("Volunteer_1_Swab_2_Culture_Illumina"))

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
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Staphylococcus.capitis = "red",
                    Staphylococcus.hominis = "purple",
                    Staphylococcus.aureus = "cadetblue1",
                    Staphylococcus.lugdunensis = "green4",
                    Staphylococcus.pasteuri = "yellow",
                    Staphylococcus.haemolyticus = "black",
                    Staphylococcus.simulans = "darkolivegreen1",
                    Staphylococcus.warneri = "red4",
                    Staphylococcus.equorum = "sienna4",
                    other = "grey")

x_other_1_long <- subset(x_other_1_long, Sample_ID %in% c("Volunteer_1_Swab_2_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_1_Swab_2_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_1_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_1_Swab_2_Culture_Illumina",
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
  filter(Sample_ID %in% c("Volunteer_2_Swab_1_Culture_Illumina"))

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
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Staphylococcus.saprophyticus = "red",
                    Staphylococcus.sp..AntiMn.1 = "purple",
                    Staphylococcus.aureus = "cadetblue1",
                    Staphylococcus.pasteuri = "green4",
                    Staphylococcus.lugdunensis = "yellow",
                    Staphylococcus.equorum = "black",
                    Staphylococcus.hominis = "darkolivegreen1",
                    Staphylococcus.xylosus = "red4",
                    Auricoccus.indicus = "sienna4",
                    other = "grey")

x_other_2_long <- subset(x_other_2_long, Sample_ID %in% c("Volunteer_2_Swab_1_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_2_Swab_1_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_2_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_2_Swab_1_Culture_Illumina",
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
  filter(Sample_ID %in% c("Volunteer_2_Swab_2_Culture_Illumina"))

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
                    Staphylococcus.capitis = "purple",
                    Staphylococcus.saprophyticus = "cadetblue1",
                    Staphylococcus.haemolyticus = "green4",
                    Staphylococcus.aureus = "yellow",
                    Staphylococcus.pasteuri = "black",
                    Staphylococcus.sp..AntiMn.1 = "darkolivegreen1",
                    Staphylococcus.lugdunensis = "red4",
                    Staphylococcus.cohnii = "sienna4",
                    other = "grey")

x_other_3_long <- subset(x_other_3_long, Sample_ID %in% c("Volunteer_2_Swab_2_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_2_Swab_2_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_3_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_2_Swab_2_Culture_Illumina",
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
  filter(Sample_ID %in% c("Volunteer_3_Swab_1_Culture_Illumina"))

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
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Staphylococcus.capitis = "red",
                    Bacillus.cereus = "purple",
                    Moraxella.osloensis = "cadetblue1",
                    Micrococcus.luteus = "green4",
                    Kocuria.rhizophila = "yellow",
                    Staphylococcus.haemolyticus = "black",
                    Staphylococcus.hominis = "darkolivegreen1",
                    Paenibacillus.sp..FSL.H7.0737 = "red4",
                    Bacillus.thuringiensis = "sienna4",
                    other = "grey")

x_other_4_long <- subset(x_other_4_long, Sample_ID %in% c("Volunteer_3_Swab_1_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_3_Swab_1_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_4_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_3_Swab_1_Culture_Illumina",
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
  filter(Sample_ID %in% c("Volunteer_3_Swab_2_Culture_Illumina"))

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
speciesPalette <- c(Staphylococcus.haemolyticus = "blue1",
                    Staphylococcus.saprophyticus = "red",
                    Staphylococcus.epidermidis = "purple",
                    Staphylococcus.hominis = "cadetblue1",
                    Staphylococcus.aureus = "green4",
                    Staphylococcus.capitis = "yellow",
                    Staphylococcus.lugdunensis = "black",
                    Micrococcus.luteus = "darkolivegreen1",
                    Moraxella.osloensis = "red4",
                    Staphylococcus.phage.IME.SA4 = "sienna4",
                    other = "grey")

x_other_5_long <- subset(x_other_5_long, Sample_ID %in% c("Volunteer_3_Swab_2_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_3_Swab_2_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_5_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_3_Swab_2_Culture_Illumina",
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
  filter(Sample_ID %in% c("Volunteer_4_Swab_1_Culture_Illumina"))

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
speciesPalette <- c(Staphylococcus.capitis = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Staphylococcus.haemolyticus = "purple",
                    Acinetobacter.johnsonii = "cadetblue1",
                    Acinetobacter.lwoffii = "green4",
                    Staphylococcus.aureus = "yellow",
                    Acinetobacter.baumannii = "black",
                    Staphylococcus.lugdunensis = "darkolivegreen1",
                    Acinetobacter.junii = "red4",
                    Staphylococcus.hominis = "sienna4",
                    other = "grey")

x_other_6_long <- subset(x_other_6_long, Sample_ID %in% c("Volunteer_4_Swab_1_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_4_Swab_1_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_6_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_4_Swab_1_Culture_Illumina",
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
  filter(Sample_ID %in% c("Volunteer_4_Swab_2_Culture_Illumina"))

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
                    Staphylococcus.capitis = "red",
                    Staphylococcus.lugdunensis = "purple",
                    Staphylococcus.haemolyticus = "cadetblue1",
                    Staphylococcus.aureus = "green4",
                    Staphylococcus.hominis = "yellow",
                    Staphylococcus.equorum = "black",
                    Staphylococcus.phage.IME.SA4 = "darkolivegreen1",
                    Staphylococcus.simulans = "red4",
                    Staphylococcus.warneri = "sienna4",
                    other = "grey")

x_other_7_long <- subset(x_other_7_long, Sample_ID %in% c("Volunteer_4_Swab_2_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_4_Swab_2_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_7_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_4_Swab_2_Culture_Illumina",
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
  filter(Sample_ID %in% c("Volunteer_5_Swab_1_Culture_Illumina"))

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
speciesPalette <- c(Staphylococcus.hominis = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Staphylococcus.saprophyticus = "purple",
                    Staphylococcus.aureus = "cadetblue1",
                    Moraxella.osloensis = "green4",
                    Staphylococcus.haemolyticus = "yellow",
                    Staphylococcus.phage.StB12 = "black",
                    Staphylococcus.xylosus = "darkolivegreen1",
                    Staphylococcus.capitis = "red4",
                    Staphylococcus.phage.StB27 = "sienna4",
                    other = "grey")

x_other_8_long <- subset(x_other_8_long, Sample_ID %in% c("Volunteer_5_Swab_1_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_5_Swab_1_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_8_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_5_Swab_1_Culture_Illumina",
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
  filter(Sample_ID %in% c("Volunteer_5_Swab_2_Culture_Illumina"))

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
speciesPalette <- c(Staphylococcus.hominis = "blue1",
                    Staphylococcus.capitis = "red",
                    Staphylococcus.epidermidis = "purple",
                    Staphylococcus.haemolyticus = "cadetblue1",
                    Staphylococcus.aureus = "green4",
                    Staphylococcus.lugdunensis = "yellow",
                    Staphylococcus.simulans = "black",
                    Corynebacterium.ureicelerivorans = "darkolivegreen1",
                    Staphylococcus.phage.StB12 = "red4",
                    Staphylococcus.pasteuri = "sienna4",
                    other = "grey")

x_other_9_long <- subset(x_other_9_long, Sample_ID %in% c("Volunteer_5_Swab_2_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_5_Swab_2_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_9_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_5_Swab_2_Culture_Illumina",
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
  filter(Sample_ID %in% c("Volunteer_6_Swab_1_Culture_Illumina"))

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
speciesPalette <- c(Micrococcus.luteus = "blue1",
                    Kocuria.rhizophila = "red",
                    Staphylococcus.epidermidis = "purple",
                    Staphylococcus.capitis = "cadetblue1",
                    Acinetobacter.lwoffii = "green4",
                    Staphylococcus.cohnii = "yellow",
                    Staphylococcus.equorum = "black",
                    Micrococcus.sp..A1 = "darkolivegreen1",
                    Staphylococcus.hominis = "red4",
                    Kocuria.palustris = "sienna4",
                    other = "grey")

x_other_10_long <- subset(x_other_10_long, Sample_ID %in% c("Volunteer_6_Swab_1_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_6_Swab_1_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_10_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_6_Swab_1_Culture_Illumina",
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
  filter(Sample_ID %in% c("Volunteer_6_Swab_2_Culture_Illumina"))

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
speciesPalette <- c(Micrococcus.luteus = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Staphylococcus.capitis = "purple",
                    Acinetobacter.lwoffii = "cadetblue1",
                    Kocuria.rhizophila = "green4",
                    Staphylococcus.hominis = "yellow",
                    Kocuria.palustris = "black",
                    Micrococcus.sp..A1 = "darkolivegreen1",
                    Moraxella.osloensis = "red4",
                    Micrococcus.sp..28 = "sienna4",
                    other = "grey")

x_other_11_long <- subset(x_other_11_long, Sample_ID %in% c("Volunteer_6_Swab_2_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_6_Swab_2_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_11_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_6_Swab_2_Culture_Illumina",
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
  filter(Sample_ID %in% c("Volunteer_7_Swab_1_Culture_Illumina"))

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
speciesPalette <- c(Staphylococcus.hominis = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Staphylococcus.pasteuri = "purple",
                    Micrococcus.luteus = "cadetblue1",
                    Staphylococcus.aureus = "green4",
                    Staphylococcus.haemolyticus = "yellow",
                    Staphylococcus.lugdunensis = "black",
                    Staphylococcus.simulans = "darkolivegreen1",
                    Prevotella.dentalis = "red4",
                    Staphylococcus.equorum = "sienna4",
                    other = "grey")

x_other_12_long <- subset(x_other_12_long, Sample_ID %in% c("Volunteer_7_Swab_1_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_7_Swab_1_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_12_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_7_Swab_1_Culture_Illumina",
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
  filter(Sample_ID %in% c("Volunteer_7_Swab_2_Culture_Illumina"))

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
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Staphylococcus.hominis = "red",
                    Staphylococcus.aureus = "purple",
                    Micrococcus.luteus = "cadetblue1",
                    Staphylococcus.lugdunensis = "green4",
                    Staphylococcus.simulans = "yellow",
                    Staphylococcus.equorum = "black",
                    Staphylococcus.pasteuri = "darkolivegreen1",
                    Staphylococcus.capitis = "red4",
                    Staphylococcus.haemolyticus = "sienna4",
                    other = "grey")

x_other_13_long <- subset(x_other_13_long, Sample_ID %in% c("Volunteer_7_Swab_2_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_7_Swab_2_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_13_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_7_Swab_2_Culture_Illumina",
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
  filter(Sample_ID %in% c("Volunteer_8_Swab_1_Culture_Illumina"))

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
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Micrococcus.luteus = "red",
                    Acinetobacter.baumannii = "purple",
                    Micrococcus.sp..A1 = "cadetblue1",
                    Staphylococcus.simulans = "green4",
                    Micrococcus.sp..28 = "yellow",
                    Acinetobacter.pittii = "black",
                    Staphylococcus.aureus = "darkolivegreen1",
                    Moraxella.osloensis = "red4",
                    Stenotrophomonas.nitritireducens = "sienna4",
                    other = "grey")

x_other_14_long <- subset(x_other_14_long, Sample_ID %in% c("Volunteer_8_Swab_1_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_8_Swab_1_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_14_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_8_Swab_1_Culture_Illumina",
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
  filter(Sample_ID %in% c("Volunteer_8_Swab_2_Culture_Illumina"))

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
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Staphylococcus.haemolyticus = "red",
                    Acinetobacter.baumannii = "purple",
                    Micrococcus.luteus = "cadetblue1",
                    Staphylococcus.aureus = "green4",
                    Staphylococcus.hominis = "yellow",
                    Staphylococcus.pasteuri = "black",
                    Stenotrophomonas.nitritireducens = "darkolivegreen1",
                    Stenotrophomonas.sp..KCTC.12332 = "red4",
                    Micrococcus.sp..A1 = "sienna4",
                    other = "grey")

x_other_15_long <- subset(x_other_15_long, Sample_ID %in% c("Volunteer_8_Swab_2_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_8_Swab_2_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_15_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_8_Swab_2_Culture_Illumina",
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
  filter(Sample_ID %in% c("Volunteer_9_Swab_1_Culture_Illumina"))

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
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Micrococcus.luteus = "red",
                    Staphylococcus.hominis = "purple",
                    Kocuria.rhizophila = "cadetblue1",
                    Staphylococcus.capitis = "green4",
                    Staphylococcus.aureus = "yellow",
                    Staphylococcus.lugdunensis = "black",
                    Staphylococcus.saprophyticus = "darkolivegreen1",
                    Micrococcus.sp..A1 = "red4",
                    Staphylococcus.pasteuri = "sienna4",
                    other = "grey")

x_other_16_long <- subset(x_other_16_long, Sample_ID %in% c("Volunteer_9_Swab_1_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_9_Swab_1_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_16_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_9_Swab_1_Culture_Illumina",
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
  filter(Sample_ID %in% c("Volunteer_9_Swab_2_Culture_Illumina"))

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
speciesPalette <- c(Pseudomonas.resinovorans = "blue1",
                    Pseudomonas.oryzihabitans = "red",
                    Pseudomonas.psychrotolerans = "purple",
                    Pseudomonas.aeruginosa = "cadetblue1",
                    Staphylococcus.epidermidis = "green4",
                    Micrococcus.luteus = "yellow",
                    Paracoccus.yeei = "black",
                    Pseudomonas.putida = "darkolivegreen1",
                    Moraxella.osloensis = "red4",
                    Staphylococcus.capitis = "sienna4",
                    other = "grey")

x_other_17_long <- subset(x_other_17_long, Sample_ID %in% c("Volunteer_9_Swab_2_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_9_Swab_2_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_17_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_9_Swab_2_Culture_Illumina",
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
  filter(Sample_ID %in% c("Volunteer_10_Swab_1_Culture_Illumina"))

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
speciesPalette <- c(Staphylococcus.hominis = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Staphylococcus.capitis = "purple",
                    Staphylococcus.aureus = "cadetblue1",
                    Staphylococcus.haemolyticus = "green4",
                    Staphylococcus.warneri = "yellow",
                    Staphylococcus.sp..CDC3 = "black",
                    Kocuria.rhizophila = "darkolivegreen1",
                    Staphylococcus.lugdunensis = "red4",
                    Staphylococcus.simulans = "sienna4",
                    other = "grey")

x_other_18_long <- subset(x_other_18_long, Sample_ID %in% c("Volunteer_10_Swab_1_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_10_Swab_1_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_18_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_10_Swab_1_Culture_Illumina",
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
  filter(Sample_ID %in% c("Volunteer_10_Swab_2_Culture_Illumina"))

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
speciesPalette <- c(Staphylococcus.hominis = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Staphylococcus.haemolyticus = "purple",
                    Staphylococcus.aureus = "cadetblue1",
                    Micrococcus.luteus = "green4",
                    Staphylococcus.capitis = "yellow",
                    Staphylococcus.lugdunensis = "black",
                    Staphylococcus.phage.StB12 = "darkolivegreen1",
                    Staphylococcus.warneri = "red4",
                    Micrococcus.sp..V7 = "sienna4",
                    other = "grey")

x_other_19_long <- subset(x_other_19_long, Sample_ID %in% c("Volunteer_10_Swab_2_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_10_Swab_2_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_19_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_10_Swab_2_Culture_Illumina",
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
  filter(Sample_ID %in% c("Volunteer_11_Swab_1_Culture_Illumina"))

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
speciesPalette <- c(Staphylococcus.capitis = "blue1",
                    Staphylococcus.haemolyticus = "red",
                    Staphylococcus.epidermidis = "purple",
                    Staphylococcus.hominis = "cadetblue1",
                    Staphylococcus.aureus = "green4",
                    Staphylococcus.auricularis = "yellow",
                    Staphylococcus.nepalensis = "black",
                    Staphylococcus.simulans = "darkolivegreen1",
                    Staphylococcus.lugdunensis = "red4",
                    Staphylococcus.saprophyticus = "sienna4",
                    other = "grey")

x_other_20_long <- subset(x_other_20_long, Sample_ID %in% c("Volunteer_11_Swab_1_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_11_Swab_1_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_20_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_11_Swab_1_Culture_Illumina",
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
  filter(Sample_ID %in% c("Volunteer_11_Swab_2_Culture_Illumina"))

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
speciesPalette <- c(Staphylococcus.hominis = "blue1",
                    Staphylococcus.capitis = "red",
                    Staphylococcus.epidermidis = "purple",
                    Staphylococcus.haemolyticus = "cadetblue1",
                    Staphylococcus.aureus = "green4",
                    Staphylococcus.lugdunensis = "yellow",
                    Staphylococcus.sp..CDC3 = "black",
                    Staphylococcus.equorum = "darkolivegreen1",
                    Staphylococcus.xylosus = "red4",
                    Staphylococcus.pasteuri = "sienna4",
                    other = "grey")

x_other_21_long <- subset(x_other_21_long, Sample_ID %in% c("Volunteer_11_Swab_2_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_11_Swab_2_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_21_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_11_Swab_2_Culture_Illumina",
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
  filter(Sample_ID %in% c("Volunteer_12_Swab_1_Culture_Illumina"))

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
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Staphylococcus.aureus = "red",
                    Staphylococcus.lugdunensis = "purple",
                    Staphylococcus.phage.CNPx = "cadetblue1",
                    Staphylococcus.saprophyticus = "green4",
                    Staphylococcus.virus.CNPH82 = "yellow",
                    Staphylococcus.virus.PH15 = "black",
                    Staphylococcus.equorum = "darkolivegreen1",
                    Staphylococcus.hominis = "red4",
                    Staphylococcus.virus.IPLA5 = "sienna4",
                    other = "grey")

x_other_22_long <- subset(x_other_22_long, Sample_ID %in% c("Volunteer_12_Swab_1_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_12_Swab_1_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_22_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_12_Swab_1_Culture_Illumina",
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
  filter(Sample_ID %in% c("Volunteer_12_Swab_2_Culture_Illumina"))

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
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Staphylococcus.hominis = "red",
                    Acinetobacter.radioresistens = "purple",
                    Streptococcus.mitis = "cadetblue1",
                    Staphylococcus.capitis = "green4",
                    Streptococcus.pneumoniae = "yellow",
                    Staphylococcus.aureus = "black",
                    Staphylococcus.lugdunensis = "darkolivegreen1",
                    Streptococcus.oralis = "red4",
                    Staphylococcus.phage.StB12 = "sienna4",
                    other = "grey")

x_other_23_long <- subset(x_other_23_long, Sample_ID %in% c("Volunteer_12_Swab_2_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Volunteer_12_Swab_2_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_23_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_12_Swab_2_Culture_Illumina",
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
  filter(Sample_ID %in% c("Positive_Control_Illumina"))

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
                    Staphylococcus.epidermidis = "red",
                    Streptococcus.mitis = "purple",
                    Streptococcus.pneumoniae = "cadetblue1",
                    Micrococcus.luteus = "green4",
                    Acinetobacter.lwoffii = "yellow",
                    Cutibacterium.acnes = "black",
                    Acinetobacter.johnsonii = "darkolivegreen1",
                    Streptococcus.pseudopneumoniae = "red4",
                    Corynebacterium.simulans = "sienna4",
                    other = "grey")

x_other_24_long <- subset(x_other_24_long, Sample_ID %in% c("Positive_Control_Illumina"))

# organise x axis how you want
x.order <- c("Positive_Control_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_24_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Positive_Control_Illumina",
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
x_other_25 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_25 <- rownames_to_column(x_other_25, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_25_long <- melt(x_other_25, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_25_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Cutibacterium.acnes = "blue1",
                    Bacteroides.vulgatus = "red",
                    X.Eubacterium..rectale = "purple",
                    Ruminococcus.bicirculans = "cadetblue1",
                    Faecalibacterium.prausnitzii = "green4",
                    Staphylococcus.epidermidis = "yellow",
                    uncultured.crAssphage = "black",
                    Moraxella.osloensis = "darkolivegreen1",
                    Staphylococcus.hominis = "red4",
                    Staphylococcus.capitis = "sienna4",
                    other = "grey")

x_other_25_long <- subset(x_other_25_long, Sample_ID %in% c("Negative_Control_Illumina"))

# organise x axis how you want
x.order <- c("Negative_Control_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_25_long, aes(x = Sample_ID, y = value, fill = Species)) +
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

# Select the top 10 most abundant species.
subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_1_Swab_1_Culture_Nanopore"))

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
speciesPalette <- c(Staphylococcus.hominis = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Bacillus.subtilis = "purple",
                    Acinetobacter.baumannii = "cadetblue1",
                    Staphylococcus.haemolyticus = "green4",
                    Corynebacterium.striatum = "yellow",
                    Staphylococcus.capitis = "black",
                    Micrococcus.luteus = "darkolivegreen1",
                    Cutibacterium.acnes = "red4",
                    Staphylococcus.lugdunensis = "sienna4",
                    other = "grey")

x_other_26_long <- subset(x_other_26_long, Sample_ID %in% c("Volunteer_1_Swab_1_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_1_Swab_1_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_26_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_1_Swab_1_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Volunteer_1_Swab_2_Culture_Nanopore"))

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
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Staphylococcus.capitis = "red",
                    Staphylococcus.hominis = "purple",
                    Acinetobacter.baumannii = "cadetblue1",
                    Corynebacterium.striatum = "green4",
                    Staphylococcus.lugdunensis = "yellow",
                    Staphylococcus.haemolyticus = "black",
                    Micrococcus.luteus = "darkolivegreen1",
                    Cutibacterium.acnes = "red4",
                    Pseudomonas.oryzihabitans = "sienna4",
                    other = "grey")

x_other_27_long <- subset(x_other_27_long, Sample_ID %in% c("Volunteer_1_Swab_2_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_1_Swab_2_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_27_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_1_Swab_2_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Volunteer_2_Swab_1_Culture_Nanopore"))

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
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Acinetobacter.baumannii = "red",
                    Staphylococcus.saprophyticus = "purple",
                    Corynebacterium.striatum = "cadetblue1",
                    Staphylococcus.hominis = "green4",
                    Staphylococcus.capitis = "yellow",
                    Staphylococcus.sp..AntiMn.1 = "black",
                    Staphylococcus.haemolyticus = "darkolivegreen1",
                    Acinetobacter.lwoffii = "red4",
                    Staphylococcus.pasteuri = "sienna4",
                    other = "grey")

x_other_28_long <- subset(x_other_28_long, Sample_ID %in% c("Volunteer_2_Swab_1_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_2_Swab_1_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_28_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_2_Swab_1_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Volunteer_2_Swab_2_Culture_Nanopore"))

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
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Staphylococcus.hominis = "red",
                    Staphylococcus.capitis = "purple",
                    Acinetobacter.baumannii = "cadetblue1",
                    Corynebacterium.striatum = "green4",
                    Staphylococcus.haemolyticus = "yellow",
                    Staphylococcus.pasteuri = "black",
                    Staphylococcus.saprophyticus = "darkolivegreen1",
                    Micrococcus.luteus = "red4",
                    Cutibacterium.acnes = "sienna4",
                    other = "grey")

x_other_29_long <- subset(x_other_29_long, Sample_ID %in% c("Volunteer_2_Swab_2_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_2_Swab_2_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_29_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_2_Swab_2_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Volunteer_3_Swab_1_Culture_Nanopore"))

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
                    Staphylococcus.capitis = "red",
                    Acinetobacter.baumannii = "purple",
                    Kocuria.rhizophila = "cadetblue1",
                    Staphylococcus.hominis = "green4",
                    Staphylococcus.haemolyticus = "yellow",
                    Corynebacterium.striatum = "black",
                    Bacillus.cereus = "darkolivegreen1",
                    Moraxella.osloensis = "red4",
                    Micrococcus.luteus = "sienna4",
                    other = "grey")

x_other_30_long <- subset(x_other_30_long, Sample_ID %in% c("Volunteer_3_Swab_1_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_3_Swab_1_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_30_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_3_Swab_1_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Volunteer_3_Swab_2_Culture_Nanopore"))

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
speciesPalette <- c(Staphylococcus.haemolyticus = "blue1",
                    Acinetobacter.baumannii = "red",
                    Staphylococcus.epidermidis = "purple",
                    Staphylococcus.hominis = "cadetblue1",
                    Corynebacterium.striatum = "green4",
                    Staphylococcus.capitis = "yellow",
                    Micrococcus.luteus = "black",
                    Acinetobacter.radioresistens = "darkolivegreen1",
                    Cutibacterium.acnes = "red4",
                    Staphylococcus.lugdunensis = "sienna4",
                    other = "grey")

x_other_31_long <- subset(x_other_31_long, Sample_ID %in% c("Volunteer_3_Swab_2_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_3_Swab_2_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_31_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_3_Swab_2_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Volunteer_4_Swab_1_Culture_Nanopore"))

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
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Staphylococcus.capitis = "red",
                    Acinetobacter.baumannii = "purple",
                    Staphylococcus.haemolyticus = "cadetblue1",
                    Corynebacterium.striatum = "green4",
                    Acinetobacter.lwoffii = "yellow",
                    Acinetobacter.johnsonii = "black",
                    Staphylococcus.hominis = "darkolivegreen1",
                    Micrococcus.luteus = "red4",
                    Cutibacterium.acnes = "sienna4",
                    other = "grey")

x_other_32_long <- subset(x_other_32_long, Sample_ID %in% c("Volunteer_4_Swab_1_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_4_Swab_1_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_32_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_4_Swab_1_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Volunteer_4_Swab_2_Culture_Nanopore"))

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
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Staphylococcus.capitis = "red",
                    Staphylococcus.lugdunensis = "purple",
                    Staphylococcus.haemolyticus = "cadetblue1",
                    Acinetobacter.baumannii = "green4",
                    Staphylococcus.hominis = "yellow",
                    Corynebacterium.striatum = "black",
                    Micrococcus.luteus = "darkolivegreen1",
                    Cutibacterium.acnes = "red4",
                    Pseudomonas.oryzihabitans = "sienna4",
                    other = "grey")

x_other_33_long <- subset(x_other_33_long, Sample_ID %in% c("Volunteer_4_Swab_2_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_4_Swab_2_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_33_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_4_Swab_2_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Volunteer_5_Swab_1_Culture_Nanopore"))

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
speciesPalette <- c(Staphylococcus.hominis = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Acinetobacter.baumannii = "purple",
                    Corynebacterium.striatum = "cadetblue1",
                    Staphylococcus.capitis = "green4",
                    Staphylococcus.haemolyticus = "yellow",
                    Moraxella.osloensis = "black",
                    Micrococcus.luteus = "darkolivegreen1",
                    Acinetobacter.radioresistens = "red4",
                    Cutibacterium.acnes = "sienna4",
                    other = "grey")

x_other_34_long <- subset(x_other_34_long, Sample_ID %in% c("Volunteer_5_Swab_1_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_5_Swab_1_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_34_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_5_Swab_1_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Volunteer_5_Swab_2_Culture_Nanopore"))

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
speciesPalette <- c(Staphylococcus.hominis = "blue1",
                    Acinetobacter.baumannii = "red",
                    Staphylococcus.epidermidis = "purple",
                    Staphylococcus.capitis = "cadetblue1",
                    Corynebacterium.striatum = "green4",
                    Staphylococcus.haemolyticus = "yellow",
                    Micrococcus.luteus = "black",
                    Acinetobacter.lwoffii = "darkolivegreen1",
                    Acinetobacter.radioresistens = "red4",
                    Staphylococcus.lugdunensis = "sienna4",
                    other = "grey")

x_other_35_long <- subset(x_other_35_long, Sample_ID %in% c("Volunteer_5_Swab_2_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_5_Swab_2_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_35_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_5_Swab_2_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Volunteer_6_Swab_1_Culture_Nanopore"))

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
speciesPalette <- c(Micrococcus.luteus = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Staphylococcus.hominis = "purple",
                    Staphylococcus.capitis = "cadetblue1",
                    Staphylococcus.haemolyticus = "green4",
                    Acinetobacter.baumannii = "yellow",
                    Corynebacterium.striatum = "black",
                    Cutibacterium.acnes = "darkolivegreen1",
                    Staphylococcus.lugdunensis = "red4",
                    Pseudomonas.oryzihabitans = "sienna4",
                    other = "grey")

x_other_36_long <- subset(x_other_36_long, Sample_ID %in% c("Volunteer_6_Swab_1_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_6_Swab_1_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_36_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_6_Swab_1_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Volunteer_6_Swab_2_Culture_Nanopore"))

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
speciesPalette <- c(Micrococcus.luteus = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Staphylococcus.capitis = "purple",
                    Acinetobacter.baumannii = "cadetblue1",
                    Staphylococcus.hominis = "green4",
                    Corynebacterium.striatum = "yellow",
                    Acinetobacter.lwoffii = "black",
                    Staphylococcus.haemolyticus = "darkolivegreen1",
                    Cutibacterium.acnes = "red4",
                    Staphylococcus.lugdunensis = "sienna4",
                    other = "grey")

x_other_37_long <- subset(x_other_37_long, Sample_ID %in% c("Volunteer_6_Swab_2_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_6_Swab_2_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_37_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_6_Swab_2_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Volunteer_7_Swab_1_Culture_Nanopore"))

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
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Staphylococcus.hominis = "red",
                    Acinetobacter.baumannii = "purple",
                    Staphylococcus.pasteuri = "cadetblue1",
                    Micrococcus.luteus = "green4",
                    Corynebacterium.striatum = "yellow",
                    Staphylococcus.capitis = "black",
                    Staphylococcus.haemolyticus = "darkolivegreen1",
                    Acinetobacter.radioresistens = "red4",
                    Cutibacterium.acnes = "sienna4",
                    other = "grey")

x_other_38_long <- subset(x_other_38_long, Sample_ID %in% c("Volunteer_7_Swab_1_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_7_Swab_1_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_38_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_7_Swab_1_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Volunteer_7_Swab_2_Culture_Nanopore"))

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
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Acinetobacter.baumannii = "red",
                    Staphylococcus.hominis = "purple",
                    Corynebacterium.striatum = "cadetblue1",
                    Micrococcus.luteus = "green4",
                    Staphylococcus.aureus = "yellow",
                    Staphylococcus.capitis = "black",
                    Staphylococcus.haemolyticus = "darkolivegreen1",
                    Cutibacterium.acnes = "red4",
                    Staphylococcus.lugdunensis = "sienna4",
                    other = "grey")

x_other_39_long <- subset(x_other_39_long, Sample_ID %in% c("Volunteer_7_Swab_2_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_7_Swab_2_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_39_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_7_Swab_2_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Volunteer_8_Swab_1_Culture_Nanopore"))

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
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Acinetobacter.baumannii = "red",
                    Micrococcus.luteus = "purple",
                    Corynebacterium.striatum = "cadetblue1",
                    Staphylococcus.hominis = "green4",
                    Staphylococcus.capitis = "yellow",
                    Staphylococcus.haemolyticus = "black",
                    Cutibacterium.acnes = "darkolivegreen1",
                    Staphylococcus.lugdunensis = "red4",
                    Pseudomonas.oryzihabitans = "sienna4",
                    other = "grey")

x_other_40_long <- subset(x_other_40_long, Sample_ID %in% c("Volunteer_8_Swab_1_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_8_Swab_1_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_40_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_8_Swab_1_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Volunteer_8_Swab_2_Culture_Nanopore"))

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
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Acinetobacter.baumannii = "red",
                    Staphylococcus.haemolyticus = "purple",
                    Staphylococcus.hominis = "cadetblue1",
                    Micrococcus.luteus = "green4",
                    Corynebacterium.striatum = "yellow",
                    Staphylococcus.capitis = "black",
                    Cutibacterium.acnes = "darkolivegreen1",
                    Staphylococcus.lugdunensis = "red4",
                    Pseudomonas.oryzihabitans = "sienna4",
                    other = "grey")

x_other_41_long <- subset(x_other_41_long, Sample_ID %in% c("Volunteer_8_Swab_2_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_8_Swab_2_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_41_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_8_Swab_2_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Volunteer_9_Swab_1_Culture_Nanopore"))

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
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Acinetobacter.baumannii = "red",
                    Kocuria.rhizophila = "purple",
                    Micrococcus.luteus = "cadetblue1",
                    Staphylococcus.hominis = "green4",
                    Staphylococcus.capitis = "yellow",
                    Corynebacterium.striatum = "black",
                    Staphylococcus.haemolyticus = "darkolivegreen1",
                    Acinetobacter.radioresistens = "red4",
                    Cutibacterium.acnes = "sienna4",
                    other = "grey")

x_other_42_long <- subset(x_other_42_long, Sample_ID %in% c("Volunteer_9_Swab_1_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_9_Swab_1_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_42_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_9_Swab_1_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Volunteer_9_Swab_2_Culture_Nanopore"))

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
                    Staphylococcus.epidermidis = "red",
                    Pseudomonas.oryzihabitans = "purple",
                    Staphylococcus.hominis = "cadetblue1",
                    Corynebacterium.striatum = "green4",
                    Staphylococcus.capitis = "yellow",
                    Micrococcus.luteus = "black",
                    Acinetobacter.radioresistens = "darkolivegreen1",
                    Staphylococcus.haemolyticus = "red4",
                    Cutibacterium.acnes = "sienna4",
                    other = "grey")

x_other_43_long <- subset(x_other_43_long, Sample_ID %in% c("Volunteer_9_Swab_2_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_9_Swab_2_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_43_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_9_Swab_2_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Volunteer_10_Swab_1_Culture_Nanopore"))

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
speciesPalette <- c(Staphylococcus.hominis = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Staphylococcus.capitis = "purple",
                    Acinetobacter.baumannii = "cadetblue1",
                    Corynebacterium.striatum = "green4",
                    Staphylococcus.haemolyticus = "yellow",
                    Micrococcus.luteus = "black",
                    Cutibacterium.acnes = "darkolivegreen1",
                    Staphylococcus.lugdunensis = "red4",
                    Pseudomonas.oryzihabitans = "sienna4",
                    other = "grey")

x_other_44_long <- subset(x_other_44_long, Sample_ID %in% c("Volunteer_10_Swab_1_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_10_Swab_1_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_44_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_10_Swab_1_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Volunteer_10_Swab_2_Culture_Nanopore"))

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
speciesPalette <- c(Staphylococcus.hominis = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Acinetobacter.baumannii = "purple",
                    Corynebacterium.striatum = "cadetblue1",
                    Staphylococcus.capitis = "green4",
                    Staphylococcus.haemolyticus = "yellow",
                    Micrococcus.luteus = "black",
                    Staphylococcus.lugdunensis = "darkolivegreen1",
                    Acinetobacter.radioresistens = "red4",
                    Cutibacterium.acnes = "sienna4",
                    other = "grey")

x_other_45_long <- subset(x_other_45_long, Sample_ID %in% c("Volunteer_10_Swab_2_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_10_Swab_2_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_45_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_10_Swab_2_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Volunteer_11_Swab_1_Culture_Nanopore"))

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
speciesPalette <- c(Staphylococcus.haemolyticus = "blue1",
                    Staphylococcus.capitis = "red",
                    Staphylococcus.epidermidis = "purple",
                    Acinetobacter.baumannii = "cadetblue1",
                    Staphylococcus.hominis = "green4",
                    Corynebacterium.striatum = "yellow",
                    Micrococcus.luteus = "black",
                    Staphylococcus.lugdunensis = "darkolivegreen1",
                    Cutibacterium.acnes = "red4",
                    Pseudomonas.oryzihabitans = "sienna4",
                    other = "grey")

x_other_46_long <- subset(x_other_46_long, Sample_ID %in% c("Volunteer_11_Swab_1_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_11_Swab_1_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_46_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_11_Swab_1_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Volunteer_11_Swab_2_Culture_Nanopore"))

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
x_other_47 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_47 <- rownames_to_column(x_other_47, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_47_long <- melt(x_other_47, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_47_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Staphylococcus.hominis = "red",
                    Staphylococcus.capitis = "purple",
                    Corynebacterium.striatum = "cadetblue1",
                    Staphylococcus.haemolyticus = "green4",
                    Acinetobacter.baumannii = "yellow",
                    Micrococcus.luteus = "black",
                    Cutibacterium.acnes = "darkolivegreen1",
                    Staphylococcus.lugdunensis = "red4",
                    Pseudomonas.oryzihabitans = "sienna4",
                    other = "grey")

x_other_47_long <- subset(x_other_47_long, Sample_ID %in% c("Volunteer_11_Swab_2_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_11_Swab_2_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_47_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_11_Swab_2_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Volunteer_12_Swab_1_Culture_Nanopore"))

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
x_other_48 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_48 <- rownames_to_column(x_other_48, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_48_long <- melt(x_other_48, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_48_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Acinetobacter.baumannii = "red",
                    Corynebacterium.striatum = "purple",
                    Staphylococcus.hominis = "cadetblue1",
                    Staphylococcus.capitis = "green4",
                    Staphylococcus.haemolyticus = "yellow",
                    Micrococcus.luteus = "black",
                    Cutibacterium.acnes = "darkolivegreen1",
                    Staphylococcus.lugdunensis = "red4",
                    Pseudomonas.oryzihabitans = "sienna4",
                    other = "grey")

x_other_48_long <- subset(x_other_48_long, Sample_ID %in% c("Volunteer_12_Swab_1_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_12_Swab_1_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_48_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_12_Swab_1_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Volunteer_12_Swab_2_Culture_Nanopore"))

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
x_other_49 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_49 <- rownames_to_column(x_other_49, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_49_long <- melt(x_other_49, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_49_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Acinetobacter.radioresistens = "red",
                    Staphylococcus.hominis = "purple",
                    Acinetobacter.baumannii = "cadetblue1",
                    Corynebacterium.striatum = "green4",
                    Staphylococcus.capitis = "yellow",
                    Staphylococcus.haemolyticus = "black",
                    Micrococcus.luteus = "darkolivegreen1",
                    Staphylococcus.lugdunensis = "red4",
                    Cutibacterium.acnes = "sienna4",
                    other = "grey")

x_other_49_long <- subset(x_other_49_long, Sample_ID %in% c("Volunteer_12_Swab_2_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Volunteer_12_Swab_2_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_49_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_12_Swab_2_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Positive_Control_Nanopore"))

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
x_other_50 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_50 <- rownames_to_column(x_other_50, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_50_long <- melt(x_other_50, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_50_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Corynebacterium.striatum = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Acinetobacter.baumannii = "purple",
                    Streptococcus.mitis = "cadetblue1",
                    Acinetobacter.lwoffii = "green4",
                    Staphylococcus.hominis = "yellow",
                    Micrococcus.luteus = "black",
                    Cutibacterium.acnes = "darkolivegreen1",
                    Staphylococcus.capitis = "red4",
                    Acinetobacter.johnsonii = "sienna4",
                    other = "grey")

x_other_50_long <- subset(x_other_50_long, Sample_ID %in% c("Positive_Control_Nanopore"))

# organise x axis how you want
x.order <- c("Positive_Control_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_50_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Positive_Control_Nanopore",
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
x_other_51 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_51 <- rownames_to_column(x_other_51, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_51_long <- melt(x_other_51, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_51_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Acinetobacter.baumannii = "red",
                    Staphylococcus.hominis = "purple",
                    Corynebacterium.striatum = "cadetblue1",
                    Staphylococcus.capitis = "green4",
                    Staphylococcus.haemolyticus = "yellow",
                    Micrococcus.luteus = "black",
                    Staphylococcus.lugdunensis = "darkolivegreen1",
                    Acinetobacter.radioresistens = "red4",
                    Cutibacterium.acnes = "sienna4",
                    other = "grey")

x_other_51_long <- subset(x_other_51_long, Sample_ID %in% c("Negative_Control_Nanopore"))

# organise x axis how you want
x.order <- c("Negative_Control_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_51_long, aes(x = Sample_ID, y = value, fill = Species)) +
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
        legend.text = element_text(size=8, face = "italic"),
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

x_other_52_long <- rbind.data.frame(x_other_long, x_other_1_long, x_other_2_long, x_other_3_long, 
                                    x_other_4_long, x_other_5_long, x_other_6_long, x_other_7_long, 
                                    x_other_8_long, x_other_9_long, x_other_10_long, x_other_11_long,
                                    x_other_12_long, x_other_13_long, x_other_14_long, x_other_15_long, 
                                    x_other_16_long, x_other_17_long, x_other_18_long, x_other_19_long,
                                    x_other_20_long, x_other_21_long, x_other_22_long,
                                    x_other_23_long, x_other_24_long, x_other_25_long, x_other_26_long,
                                    x_other_27_long, x_other_28_long, x_other_29_long, x_other_30_long,
                                    x_other_31_long, x_other_32_long, x_other_33_long, x_other_34_long,
                                    x_other_35_long, x_other_36_long, x_other_37_long, x_other_38_long,
                                    x_other_39_long, x_other_40_long, x_other_41_long, x_other_42_long,
                                    x_other_43_long, x_other_44_long, x_other_45_long, x_other_46_long,
                                    x_other_47_long, x_other_48_long, x_other_49_long, x_other_50_long,
                                    x_other_51_long)

# Find out all the species to be plotted
unique(x_other_52_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Staphylococcus.hominis = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Bacillus.sp..FJAT.14266 = "purple",
                    Bacillus.subtilis = "cadetblue1",
                    Staphylococcus.haemolyticus = "green4",
                    Bacillus.sp..LM.4.2  = "yellow",
                    Staphylococcus.aureus = "black",
                    Staphylococcus.capitis = "darkolivegreen1",
                    Staphylococcus.lugdunensis = "red4",
                    Bacillus.gibsonii = "sienna4",
                    Staphylococcus.pasteuri = "dimgray",                          
                    Staphylococcus.simulans = "blue4",                                      
                    Staphylococcus.warneri  = "blueviolet",                       
                    Staphylococcus.equorum = "plum",
                    Staphylococcus.saprophyticus = "brown4",                              
                    Staphylococcus.sp..AntiMn.1 = "green3",                     
                    Staphylococcus.xylosus = "cornflowerblue",
                    Auricoccus.indicus = "chocolate",             
                    Staphylococcus.cohnii = "chocolate1",           
                    Bacillus.cereus = "darkmagenta",                
                    Moraxella.osloensis = "khaki4",           
                    Micrococcus.luteus ="cyan4",              
                    Kocuria.rhizophila = "cyan",             
                    Paenibacillus.sp..FSL.H7.0737 = "deepskyblue",   
                    Bacillus.thuringiensis = "deeppink",           
                    Staphylococcus.phage.IME.SA4 = "deeppink3",    
                    Acinetobacter.johnsonii = "darkolivegreen3",          
                    Acinetobacter.lwoffii = "darkred",            
                    Acinetobacter.baumannii = "palegreen",         
                    Acinetobacter.junii = "#ffc425",               
                    Staphylococcus.phage.StB12 = "#f37735",       
                    Staphylococcus.phage.StB27 = "wheat",      
                    Corynebacterium.ureicelerivorans = "#d11141",
                    Micrococcus.sp..A1 = "yellow3",               
                    Kocuria.palustris = "tan",               
                    Micrococcus.sp..28 = "salmon",              
                    Prevotella.dentalis = "#E76BF3",              
                    Acinetobacter.pittii = "#529EFF",            
                    Stenotrophomonas.nitritireducens = "khaki", 
                    Stenotrophomonas.sp..KCTC.12332 = "#00C08D",  
                    Pseudomonas.resinovorans = "#00b159",        
                    Pseudomonas.oryzihabitans = "#72B000",        
                    Pseudomonas.psychrotolerans = "salmon3",      
                    Pseudomonas.aeruginosa = "#F8766D",
                    Paracoccus.yeei = "#9590FF",                  
                    Pseudomonas.putida = "darkgoldenrod1",               
                    Staphylococcus.sp..CDC3 = "brown3",         
                    Micrococcus.sp..V7 = "burlywood1",               
                    Staphylococcus.auricularis = "brown1",       
                    Staphylococcus.nepalensis = "cadetblue3",       
                    Staphylococcus.phage.CNPx = "#E64B35B2",        
                    Staphylococcus.virus.CNPH82 = "#3C5488B2",      
                    Staphylococcus.virus.PH15 = "#F39B7FB2",       
                    Staphylococcus.virus.IPLA5 = "tomato",       
                    Acinetobacter.radioresistens = "#4DBBD5B2",     
                    Streptococcus.mitis = "#8491B4B2",            
                    Streptococcus.pneumoniae = "#91D1C2B2",        
                    Streptococcus.oralis = "#DC0000B2",             
                    Corynebacterium.striatum = "#7E6148B2",        
                    Cutibacterium.acnes = "yellowgreen",              
                    Streptococcus.pseudopneumoniae = "#00A087B2",   
                    Corynebacterium.simulans = "#3C5488B2",        
                    Bacteroides.vulgatus = "turquoise3",              
                    X.Eubacterium..rectale = "violet",          
                    Ruminococcus.bicirculans = "tan1",        
                    Faecalibacterium.prausnitzii = "tan4",    
                    uncultured.crAssphage = "springgreen3",
                    other = "grey")


# Order x axis labels

x.order <- c("Volunteer_1_Swab_1_Culture_Illumina","Volunteer_1_Swab_1_Culture_Nanopore", 
             "Volunteer_1_Swab_2_Culture_Illumina","Volunteer_1_Swab_2_Culture_Nanopore",
             "Volunteer_2_Swab_1_Culture_Illumina","Volunteer_2_Swab_1_Culture_Nanopore",
             "Volunteer_2_Swab_2_Culture_Illumina","Volunteer_2_Swab_2_Culture_Nanopore",
             "Volunteer_3_Swab_1_Culture_Illumina","Volunteer_3_Swab_1_Culture_Nanopore",
             "Volunteer_3_Swab_2_Culture_Illumina","Volunteer_3_Swab_2_Culture_Nanopore",
             "Volunteer_4_Swab_1_Culture_Illumina","Volunteer_4_Swab_1_Culture_Nanopore",
             "Volunteer_4_Swab_2_Culture_Illumina","Volunteer_4_Swab_2_Culture_Nanopore",
             "Volunteer_5_Swab_1_Culture_Illumina","Volunteer_5_Swab_1_Culture_Nanopore",
             "Volunteer_5_Swab_2_Culture_Illumina","Volunteer_5_Swab_2_Culture_Nanopore",
             "Volunteer_6_Swab_1_Culture_Illumina","Volunteer_6_Swab_1_Culture_Nanopore",
             "Volunteer_6_Swab_2_Culture_Illumina","Volunteer_6_Swab_2_Culture_Nanopore",
             "Volunteer_7_Swab_1_Culture_Illumina","Volunteer_7_Swab_1_Culture_Nanopore",
             "Volunteer_7_Swab_2_Culture_Illumina","Volunteer_7_Swab_2_Culture_Nanopore",
             "Volunteer_8_Swab_1_Culture_Illumina","Volunteer_8_Swab_1_Culture_Nanopore",
             "Volunteer_8_Swab_2_Culture_Illumina","Volunteer_8_Swab_2_Culture_Nanopore",
             "Volunteer_9_Swab_1_Culture_Illumina","Volunteer_9_Swab_1_Culture_Nanopore",
             "Volunteer_9_Swab_2_Culture_Illumina","Volunteer_9_Swab_2_Culture_Nanopore",
             "Volunteer_10_Swab_1_Culture_Illumina","Volunteer_10_Swab_1_Culture_Nanopore",
             "Volunteer_10_Swab_2_Culture_Illumina","Volunteer_10_Swab_2_Culture_Nanopore",
             "Volunteer_11_Swab_1_Culture_Illumina","Volunteer_11_Swab_1_Culture_Nanopore",
             "Volunteer_11_Swab_2_Culture_Illumina","Volunteer_11_Swab_2_Culture_Nanopore",
             "Volunteer_12_Swab_1_Culture_Illumina","Volunteer_12_Swab_1_Culture_Nanopore",
             "Volunteer_12_Swab_2_Culture_Illumina","Volunteer_12_Swab_2_Culture_Nanopore",
             "Positive_Control_Illumina","Positive_Control_Nanopore",
             "Negative_Control_Illumina","Negative_Control_Nanopore")

# Plot the individual plots into one plot

ggplot(x_other_52_long, aes(x = Sample_ID, y = value, fill = Species)) +
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
