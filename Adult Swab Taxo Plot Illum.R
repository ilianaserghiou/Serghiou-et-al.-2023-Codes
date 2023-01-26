library("dplyr")
library("readr")
#install.packages("tidyverse")
library("tidyverse")
#install.packages("reshape2")
library("reshape2")

# Set the working directory to import the data
setwd("C:/Users/serghioi/Documents/QIB/PhD - Development and Evolution Of The Infant Skin Microbiome/Data Collection/DNA Extrac. Method Development/Data Plots/Promega Maxwell FMH Volunteer Swabs Extraction Run 4/Illumina")

# Import the csv file.
Volunteer_1_Swab_1 <- read_csv("0739-1-Brack-Clean.tabular.csv")

###################################################################################################

# Select only the "name" and "fraction_total_reads" columns.
Volunteer_1_Swab_1 <- Volunteer_1_Swab_1 %>% select(name, fraction_total_reads)

# Rename the "fraction_total_reads" column as the sample Id name.
names(Volunteer_1_Swab_1)[names(Volunteer_1_Swab_1) == "fraction_total_reads"] <- "Volunteer_1_Swab_1"

# Repeat with the other csv files.
Volunteer_1_Swab_2 <- read_csv("0739-2-Brack-Clean.tabular.csv")
Volunteer_1_Swab_2 <- Volunteer_1_Swab_2 %>% select(name, fraction_total_reads)
names(Volunteer_1_Swab_2)[names(Volunteer_1_Swab_2) == "fraction_total_reads"] <- "Volunteer_1_Swab_2"

Volunteer_2_Swab_1 <- read_csv("0739-3-Brack-Clean.tabular.csv")
Volunteer_2_Swab_1 <- Volunteer_2_Swab_1 %>% select(name, fraction_total_reads)
names(Volunteer_2_Swab_1)[names(Volunteer_2_Swab_1) == "fraction_total_reads"] <- "Volunteer_2_Swab_1"

Volunteer_2_Swab_2 <- read_csv("0739-4-Brack-Clean.tabular.csv")
Volunteer_2_Swab_2 <- Volunteer_2_Swab_2 %>% select(name, fraction_total_reads)
names(Volunteer_2_Swab_2)[names(Volunteer_2_Swab_2) == "fraction_total_reads"] <- "Volunteer_2_Swab_2"

Volunteer_3_Swab_1 <- read_csv("0739-5-Brack-Clean.tabular.csv")
Volunteer_3_Swab_1 <- Volunteer_3_Swab_1 %>% select(name, fraction_total_reads)
names(Volunteer_3_Swab_1)[names(Volunteer_3_Swab_1) == "fraction_total_reads"] <- "Volunteer_3_Swab_1"

Volunteer_3_Swab_2 <- read_csv("0739-6-Brack-Clean.tabular.csv")
Volunteer_3_Swab_2 <- Volunteer_3_Swab_2 %>% select(name, fraction_total_reads)
names(Volunteer_3_Swab_2)[names(Volunteer_3_Swab_2) == "fraction_total_reads"] <- "Volunteer_3_Swab_2"

Volunteer_4_Swab_1 <- read_csv("0739-7-Brack-Clean.tabular.csv")
Volunteer_4_Swab_1 <- Volunteer_4_Swab_1 %>% select(name, fraction_total_reads)
names(Volunteer_4_Swab_1)[names(Volunteer_4_Swab_1) == "fraction_total_reads"] <- "Volunteer_4_Swab_1"

Volunteer_4_Swab_2 <- read_csv("0739-8-Brack-Clean.tabular.csv")
Volunteer_4_Swab_2 <- Volunteer_4_Swab_2 %>% select(name, fraction_total_reads)
names(Volunteer_4_Swab_2)[names(Volunteer_4_Swab_2) == "fraction_total_reads"] <- "Volunteer_4_Swab_2"

Volunteer_5_Swab_1 <- read_csv("0739-9-Brack-Clean.tabular.csv")
Volunteer_5_Swab_1 <- Volunteer_5_Swab_1 %>% select(name, fraction_total_reads)
names(Volunteer_5_Swab_1)[names(Volunteer_5_Swab_1) == "fraction_total_reads"] <- "Volunteer_5_Swab_1"

Volunteer_5_Swab_2 <- read_csv("0739-10-Brack-Clean.tabular.csv")
Volunteer_5_Swab_2 <- Volunteer_5_Swab_2 %>% select(name, fraction_total_reads)
names(Volunteer_5_Swab_2)[names(Volunteer_5_Swab_2) == "fraction_total_reads"] <- "Volunteer_5_Swab_2"

Volunteer_6_Swab_1 <- read_csv("0739-11-Brack-Clean.tabular.csv")
Volunteer_6_Swab_1 <- Volunteer_6_Swab_1 %>% select(name, fraction_total_reads)
names(Volunteer_6_Swab_1)[names(Volunteer_6_Swab_1) == "fraction_total_reads"] <- "Volunteer_6_Swab_1"

Volunteer_6_Swab_2 <- read_csv("0739-12-Brack-Clean.tabular.csv")
Volunteer_6_Swab_2 <- Volunteer_6_Swab_2 %>% select(name, fraction_total_reads)
names(Volunteer_6_Swab_2)[names(Volunteer_6_Swab_2) == "fraction_total_reads"] <- "Volunteer_6_Swab_2"

Volunteer_7_Swab_1 <- read_csv("0739-13-Brack-Clean.tabular.csv")
Volunteer_7_Swab_1 <- Volunteer_7_Swab_1 %>% select(name, fraction_total_reads)
names(Volunteer_7_Swab_1)[names(Volunteer_7_Swab_1) == "fraction_total_reads"] <- "Volunteer_7_Swab_1"

Volunteer_7_Swab_2 <- read_csv("0739-14-Brack-Clean.tabular.csv")
Volunteer_7_Swab_2 <- Volunteer_7_Swab_2 %>% select(name, fraction_total_reads)
names(Volunteer_7_Swab_2)[names(Volunteer_7_Swab_2) == "fraction_total_reads"] <- "Volunteer_7_Swab_2"

Volunteer_8_Swab_1 <- read_csv("0739-15-Brack-Clean.tabular.csv")
Volunteer_8_Swab_1 <- Volunteer_8_Swab_1 %>% select(name, fraction_total_reads)
names(Volunteer_8_Swab_1)[names(Volunteer_8_Swab_1) == "fraction_total_reads"] <- "Volunteer_8_Swab_1"

Volunteer_8_Swab_2 <- read_csv("0720-16-Brack-Clean.tabular.csv")
Volunteer_8_Swab_2 <- Volunteer_8_Swab_2 %>% select(name, fraction_total_reads)
names(Volunteer_8_Swab_2)[names(Volunteer_8_Swab_2) == "fraction_total_reads"] <- "Volunteer_8_Swab_2"

Volunteer_9_Swab_1 <- read_csv("0739-17-Brack-Clean.tabular.csv")
Volunteer_9_Swab_1 <- Volunteer_9_Swab_1 %>% select(name, fraction_total_reads)
names(Volunteer_9_Swab_1)[names(Volunteer_9_Swab_1) == "fraction_total_reads"] <- "Volunteer_9_Swab_1"

Volunteer_9_Swab_2 <- read_csv("0739-18-Brack-Clean.tabular.csv")
Volunteer_9_Swab_2 <- Volunteer_9_Swab_2 %>% select(name, fraction_total_reads)
names(Volunteer_9_Swab_2)[names(Volunteer_9_Swab_2) == "fraction_total_reads"] <- "Volunteer_9_Swab_2"

Volunteer_10_Swab_1 <- read_csv("0720-19-Brack-Clean.tabular.csv")
Volunteer_10_Swab_1 <- Volunteer_10_Swab_1 %>% select(name, fraction_total_reads)
names(Volunteer_10_Swab_1)[names(Volunteer_10_Swab_1) == "fraction_total_reads"] <- "Volunteer_10_Swab_1"

Volunteer_10_Swab_2 <- read_csv("0739-20-Brack-Clean.tabular.csv")
Volunteer_10_Swab_2 <- Volunteer_10_Swab_2 %>% select(name, fraction_total_reads)
names(Volunteer_10_Swab_2)[names(Volunteer_10_Swab_2) == "fraction_total_reads"] <- "Volunteer_10_Swab_2"

Volunteer_11_Swab_1 <- read_csv("0720-21-Brack-Clean.tabular.csv")
Volunteer_11_Swab_1 <- Volunteer_11_Swab_1 %>% select(name, fraction_total_reads)
names(Volunteer_11_Swab_1)[names(Volunteer_11_Swab_1) == "fraction_total_reads"] <- "Volunteer_11_Swab_1"

Volunteer_11_Swab_2 <- read_csv("0720-22-Brack-Clean.tabular.csv")
Volunteer_11_Swab_2 <- Volunteer_11_Swab_2 %>% select(name, fraction_total_reads)
names(Volunteer_11_Swab_2)[names(Volunteer_11_Swab_2) == "fraction_total_reads"] <- "Volunteer_11_Swab_2"

Volunteer_12_Swab_1 <- read_csv("0739-23-Brack-Clean.tabular.csv")
Volunteer_12_Swab_1 <- Volunteer_12_Swab_1 %>% select(name, fraction_total_reads)
names(Volunteer_12_Swab_1)[names(Volunteer_12_Swab_1) == "fraction_total_reads"] <- "Volunteer_12_Swab_1"

Volunteer_12_Swab_2 <- read_csv("0720-24-Brack-Clean.tabular.csv")
Volunteer_12_Swab_2 <- Volunteer_12_Swab_2 %>% select(name, fraction_total_reads)
names(Volunteer_12_Swab_2)[names(Volunteer_12_Swab_2) == "fraction_total_reads"] <- "Volunteer_12_Swab_2"

Positive_Control_1 <- read_csv("0720-Pos-Con-1-Brack-Clean.tabular.csv")
Positive_Control_1 <- Positive_Control_1 %>% select(name, fraction_total_reads)
names(Positive_Control_1)[names(Positive_Control_1) == "fraction_total_reads"] <- "Positive_Control_1"

Positive_Control_2 <- read_csv("0720-Pos-Con-2-Brack-Clean.tabular.csv")
Positive_Control_2 <- Positive_Control_2 %>% select(name, fraction_total_reads)
names(Positive_Control_2)[names(Positive_Control_2) == "fraction_total_reads"] <- "Positive_Control_2"

Positive_Control_3 <- read_csv("0720-Pos-Con-3-Brack-Clean.tabular.csv")
Positive_Control_3 <- Positive_Control_3 %>% select(name, fraction_total_reads)
names(Positive_Control_3)[names(Positive_Control_3) == "fraction_total_reads"] <- "Positive_Control_3"

Positive_Control_4 <- read_csv("0720-Pos-Con-4-Brack-Clean.tabular.csv")
Positive_Control_4 <- Positive_Control_4 %>% select(name, fraction_total_reads)
names(Positive_Control_4)[names(Positive_Control_4) == "fraction_total_reads"] <- "Positive_Control_4"

Negative_Control <- read_csv("0720-Neg-Con-Brack-Clean.tabular.csv")
Negative_Control <- Negative_Control %>% select(name, fraction_total_reads)
names(Negative_Control)[names(Negative_Control) == "fraction_total_reads"] <- "Negative_Control"

# R can only merge two files each time, merge the files together using the species "name" column.
merged_final <- Volunteer_1_Swab_1 %>%
  full_join(Volunteer_1_Swab_2, by='name') %>%
  full_join(Volunteer_2_Swab_1, by='name') %>%
  full_join(Volunteer_2_Swab_2, by='name') %>%
  full_join(Volunteer_3_Swab_1, by='name') %>%
  full_join(Volunteer_3_Swab_2, by='name') %>%
  full_join(Volunteer_4_Swab_1, by='name') %>%
  full_join(Volunteer_4_Swab_2, by='name') %>%
  full_join(Volunteer_5_Swab_1, by='name') %>%
  full_join(Volunteer_5_Swab_2, by='name') %>%
  full_join(Volunteer_6_Swab_1, by='name') %>%
  full_join(Volunteer_6_Swab_2, by='name') %>%
  full_join(Volunteer_7_Swab_1, by='name') %>%
  full_join(Volunteer_7_Swab_2, by='name') %>%
  full_join(Volunteer_8_Swab_1, by='name') %>%
  full_join(Volunteer_8_Swab_2, by='name') %>%
  full_join(Volunteer_9_Swab_1, by='name') %>%
  full_join(Volunteer_9_Swab_2, by='name') %>%
  full_join(Volunteer_10_Swab_1, by='name') %>%
  full_join(Volunteer_10_Swab_2, by='name') %>%
  full_join(Volunteer_11_Swab_1, by='name') %>%
  full_join(Volunteer_11_Swab_2, by='name') %>%
  full_join(Volunteer_12_Swab_1, by='name') %>%
  full_join(Volunteer_12_Swab_2, by='name') %>%
  full_join(Positive_Control_1, by='name') %>%
  full_join(Positive_Control_2, by='name') %>%
  full_join(Positive_Control_3, by='name') %>%
  full_join(Positive_Control_4, by='name') %>%
  full_join(Negative_Control, by='name')

# "NA" is added when one sample does not contain a species.
# Replace the NAs with zeros.
merged_final <- merged_final %>% replace(is.na(.), 0)

# Convert the data into percentages if needed for plotting.
merged_final <- mutate_if(merged_final, is.numeric, ~ . * 100)

# Turn the species names into rownames.
merged_final <- column_to_rownames(merged_final, "name")

# Turn off the scientific notation (I just find the data easier to read with it turned off).
options(scipen=999)

# Order the dataframe so that the most abundant species are at the top.
merged_final_ordered <-merged_final[order(rowSums(merged_final),decreasing=T),]

# Transpose the dataframe so that the sample IDs become the row names.
merged_final_ordered_transposed <- t(merged_final_ordered)
# Convert back to a data frame for saving the file.
merged_final_ordered_transposed <- as.data.frame(merged_final_ordered_transposed)

# Save the new combined file as a .csv file.
write_csv(merged_final_ordered_transposed, "RA_Volunteer_Within_Transposed.csv")


###################################################################################################
# Make a stacked bar plot of the results.

# Select the top 10 most abundant species.
merged_final_ordered_transposed <- rownames_to_column(merged_final_ordered_transposed, var = "Sample_ID")

subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Volunteer_1_Swab_1"))

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

x_other_long <- subset(x_other_long, Sample_ID %in% c("Volunteer_1_Swab_1"))

# organise x axis how you want
x.order <- c("Volunteer_1_Swab_1")

# Plot the data as a stacked bar plot.
ggplot(x_other_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_1_Swab_1",
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
  filter(Sample_ID %in% c("Volunteer_1_Swab_2"))

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

x_other_1_long <- subset(x_other_1_long, Sample_ID %in% c("Volunteer_1_Swab_2"))

# organise x axis how you want
x.order <- c("Volunteer_1_Swab_2")

# Plot the data as a stacked bar plot.
ggplot(x_other_1_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_1_Swab_2",
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
  filter(Sample_ID %in% c("Volunteer_2_Swab_1"))

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

# Bind together the top 13 species and the "other" column.
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

x_other_2_long <- subset(x_other_2_long, Sample_ID %in% c("Volunteer_2_Swab_1"))

# organise x axis how you want
x.order <- c("Volunteer_2_Swab_1")

# Plot the data as a stacked bar plot.
ggplot(x_other_2_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_2_Swab_1",
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
  filter(Sample_ID %in% c("Volunteer_2_Swab_2"))

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

x_other_3_long <- subset(x_other_3_long, Sample_ID %in% c("Volunteer_2_Swab_2"))

# organise x axis how you want
x.order <- c("Volunteer_2_Swab_2")

# Plot the data as a stacked bar plot.
ggplot(x_other_3_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_2_Swab_2",
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
  filter(Sample_ID %in% c("Volunteer_3_Swab_1"))

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

x_other_4_long <- subset(x_other_4_long, Sample_ID %in% c("Volunteer_3_Swab_1"))

# organise x axis how you want
x.order <- c("Volunteer_3_Swab_1")

# Plot the data as a stacked bar plot.
ggplot(x_other_4_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_3_Swab_1",
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
  filter(Sample_ID %in% c("Volunteer_3_Swab_2"))

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

x_other_5_long <- subset(x_other_5_long, Sample_ID %in% c("Volunteer_3_Swab_2"))

# organise x axis how you want
x.order <- c("Volunteer_3_Swab_2")

# Plot the data as a stacked bar plot.
ggplot(x_other_5_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_3_Swab_2",
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
  filter(Sample_ID %in% c("Volunteer_4_Swab_1"))

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

x_other_6_long <- subset(x_other_6_long, Sample_ID %in% c("Volunteer_4_Swab_1"))

# organise x axis how you want
x.order <- c("Volunteer_4_Swab_1")

# Plot the data as a stacked bar plot.
ggplot(x_other_6_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_4_Swab_1",
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
  filter(Sample_ID %in% c("Volunteer_4_Swab_2"))

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

x_other_7_long <- subset(x_other_7_long, Sample_ID %in% c("Volunteer_4_Swab_2"))

# organise x axis how you want
x.order <- c("Volunteer_4_Swab_2")

# Plot the data as a stacked bar plot.
ggplot(x_other_7_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_4_Swab_2",
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
  filter(Sample_ID %in% c("Volunteer_5_Swab_1"))

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

x_other_8_long <- subset(x_other_8_long, Sample_ID %in% c("Volunteer_5_Swab_1"))

# organise x axis how you want
x.order <- c("Volunteer_5_Swab_1")

# Plot the data as a stacked bar plot.
ggplot(x_other_8_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_5_Swab_1",
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
  filter(Sample_ID %in% c("Volunteer_5_Swab_2"))

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

x_other_9_long <- subset(x_other_9_long, Sample_ID %in% c("Volunteer_5_Swab_2"))

# organise x axis how you want
x.order <- c("Volunteer_5_Swab_2")

# Plot the data as a stacked bar plot.
ggplot(x_other_9_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_5_Swab_2",
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
  filter(Sample_ID %in% c("Volunteer_6_Swab_1"))

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

x_other_10_long <- subset(x_other_10_long, Sample_ID %in% c("Volunteer_6_Swab_1"))

# organise x axis how you want
x.order <- c("Volunteer_6_Swab_1")

# Plot the data as a stacked bar plot.
ggplot(x_other_10_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_6_Swab_1",
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
  filter(Sample_ID %in% c("Volunteer_6_Swab_2"))

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

x_other_11_long <- subset(x_other_11_long, Sample_ID %in% c("Volunteer_6_Swab_2"))

# organise x axis how you want
x.order <- c("Volunteer_6_Swab_2")

# Plot the data as a stacked bar plot.
ggplot(x_other_11_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_6_Swab_2",
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
  filter(Sample_ID %in% c("Volunteer_7_Swab_1"))

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

x_other_12_long <- subset(x_other_12_long, Sample_ID %in% c("Volunteer_7_Swab_1"))

# organise x axis how you want
x.order <- c("Volunteer_7_Swab_1")

# Plot the data as a stacked bar plot.
ggplot(x_other_12_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_7_Swab_1",
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
  filter(Sample_ID %in% c("Volunteer_7_Swab_2"))

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

x_other_13_long <- subset(x_other_13_long, Sample_ID %in% c("Volunteer_7_Swab_2"))

# organise x axis how you want
x.order <- c("Volunteer_7_Swab_2")

# Plot the data as a stacked bar plot.
ggplot(x_other_13_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_7_Swab_2",
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
  filter(Sample_ID %in% c("Volunteer_8_Swab_1"))

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

x_other_14_long <- subset(x_other_14_long, Sample_ID %in% c("Volunteer_8_Swab_1"))

# organise x axis how you want
x.order <- c("Volunteer_8_Swab_1")

# Plot the data as a stacked bar plot.
ggplot(x_other_14_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_8_Swab_1",
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
  filter(Sample_ID %in% c("Volunteer_8_Swab_2"))

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

x_other_15_long <- subset(x_other_15_long, Sample_ID %in% c("Volunteer_8_Swab_2"))

# organise x axis how you want
x.order <- c("Volunteer_8_Swab_2")

# Plot the data as a stacked bar plot.
ggplot(x_other_15_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_8_Swab_2",
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
  filter(Sample_ID %in% c("Volunteer_9_Swab_1"))

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

x_other_16_long <- subset(x_other_16_long, Sample_ID %in% c("Volunteer_9_Swab_1"))

# organise x axis how you want
x.order <- c("Volunteer_9_Swab_1")

# Plot the data as a stacked bar plot.
ggplot(x_other_16_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_9_Swab_1",
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
  filter(Sample_ID %in% c("Volunteer_9_Swab_2"))

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

x_other_17_long <- subset(x_other_17_long, Sample_ID %in% c("Volunteer_9_Swab_2"))

# organise x axis how you want
x.order <- c("Volunteer_9_Swab_2")

# Plot the data as a stacked bar plot.
ggplot(x_other_17_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_9_Swab_2",
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
  filter(Sample_ID %in% c("Volunteer_10_Swab_1"))

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
                    Streptococcus.mitis = "sienna4",
                    other = "grey")

x_other_18_long <- subset(x_other_18_long, Sample_ID %in% c("Volunteer_10_Swab_1"))

# organise x axis how you want
x.order <- c("Volunteer_10_Swab_1")

# Plot the data as a stacked bar plot.
ggplot(x_other_18_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_10_Swab_1",
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
  filter(Sample_ID %in% c("Volunteer_10_Swab_2"))

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

x_other_19_long <- subset(x_other_19_long, Sample_ID %in% c("Volunteer_10_Swab_2"))

# organise x axis how you want
x.order <- c("Volunteer_10_Swab_2")

# Plot the data as a stacked bar plot.
ggplot(x_other_19_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_10_Swab_2",
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
  filter(Sample_ID %in% c("Volunteer_11_Swab_1"))

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

x_other_20_long <- subset(x_other_20_long, Sample_ID %in% c("Volunteer_11_Swab_1"))

# organise x axis how you want
x.order <- c("Volunteer_11_Swab_1")

# Plot the data as a stacked bar plot.
ggplot(x_other_20_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_11_Swab_1",
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
  filter(Sample_ID %in% c("Volunteer_11_Swab_2"))

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

x_other_21_long <- subset(x_other_21_long, Sample_ID %in% c("Volunteer_11_Swab_2"))

# organise x axis how you want
x.order <- c("Volunteer_11_Swab_2")

# Plot the data as a stacked bar plot.
ggplot(x_other_21_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_11_Swab_2",
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
  filter(Sample_ID %in% c("Volunteer_12_Swab_1"))

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

x_other_22_long <- subset(x_other_22_long, Sample_ID %in% c("Volunteer_12_Swab_1"))

# organise x axis how you want
x.order <- c("Volunteer_12_Swab_1")

# Plot the data as a stacked bar plot.
ggplot(x_other_22_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_12_Swab_1",
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
  filter(Sample_ID %in% c("Volunteer_12_Swab_2"))

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

x_other_23_long <- subset(x_other_23_long, Sample_ID %in% c("Volunteer_12_Swab_2"))

# organise x axis how you want
x.order <- c("Volunteer_12_Swab_2")

# Plot the data as a stacked bar plot.
ggplot(x_other_23_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_12_Swab_2",
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
  filter(Sample_ID %in% c("Positive_Control_1"))

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

x_other_24_long <- subset(x_other_24_long, Sample_ID %in% c("Positive_Control_1"))

# organise x axis how you want
x.order <- c("Positive_Control_1")

# Plot the data as a stacked bar plot.
ggplot(x_other_24_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Positive_Control_1",
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
  filter(Sample_ID %in% c("Positive_Control_2"))

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

x_other_25_long <- subset(x_other_25_long, Sample_ID %in% c("Positive_Control_2"))

# organise x axis how you want
x.order <- c("Positive_Control_2")

# Plot the data as a stacked bar plot.
ggplot(x_other_25_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Positive_Control_2",
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
  filter(Sample_ID %in% c("Positive_Control_3"))

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

x_other_26_long <- subset(x_other_26_long, Sample_ID %in% c("Positive_Control_3"))

# organise x axis how you want
x.order <- c("Positive_Control_3")

# Plot the data as a stacked bar plot.
ggplot(x_other_26_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Positive_Control_3",
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
  filter(Sample_ID %in% c("Positive_Control_4"))

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

x_other_27_long <- subset(x_other_27_long, Sample_ID %in% c("Positive_Control_4"))

# organise x axis how you want
x.order <- c("Positive_Control_4")

# Plot the data as a stacked bar plot.
ggplot(x_other_27_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Positive_Control_4",
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
  filter(Sample_ID %in% c("Negative_Control"))

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
                    Cutibacterium.acnes = "purple",
                    Acinetobacter.lwoffii = "cadetblue1",
                    Staphylococcus.epidermidis = "green4",
                    Acinetobacter.baumannii = "yellow",
                    Moraxella.osloensis = "black",
                    Streptococcus.mitis = "darkolivegreen1",
                    Staphylococcus.hominis = "red4",
                    Micrococcus.luteus = "sienna4",
                    other = "grey")

x_other_28_long <- subset(x_other_28_long, Sample_ID %in% c("Negative_Control"))

# organise x axis how you want
x.order <- c("Negative_Control")

# Plot the data as a stacked bar plot.
ggplot(x_other_28_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Negative_Control",
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

x_other_29_long <- rbind.data.frame(x_other_long, x_other_1_long, x_other_2_long, x_other_3_long, 
                                    x_other_4_long, x_other_5_long, x_other_6_long, x_other_7_long, 
                                    x_other_8_long, x_other_9_long, x_other_10_long, x_other_11_long, 
                                    x_other_12_long, x_other_13_long, x_other_14_long, x_other_15_long, 
                                    x_other_16_long, x_other_17_long, x_other_18_long, x_other_19_long, 
                                    x_other_20_long, x_other_21_long, x_other_22_long, x_other_23_long, 
                                    x_other_24_long, x_other_25_long, x_other_26_long, x_other_27_long, 
                                    x_other_28_long)

# Find out all the species to be plotted
unique(x_other_29_long$Species)

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

x.order <- c("Volunteer_1_Swab_1", "Volunteer_1_Swab_2", "Volunteer_2_Swab_1", "Volunteer_2_Swab_2",
             "Volunteer_3_Swab_1", "Volunteer_3_Swab_2", "Volunteer_4_Swab_1", "Volunteer_4_Swab_2", 
             "Volunteer_5_Swab_1", "Volunteer_5_Swab_2", "Volunteer_6_Swab_1", "Volunteer_6_Swab_2", 
             "Volunteer_7_Swab_1", "Volunteer_7_Swab_2", "Volunteer_8_Swab_1", "Volunteer_8_Swab_2", 
             "Volunteer_9_Swab_1", "Volunteer_9_Swab_2", "Volunteer_10_Swab_1", "Volunteer_10_Swab_2",
             "Volunteer_11_Swab_1", "Volunteer_11_Swab_2", "Volunteer_12_Swab_1", "Volunteer_12_Swab_2", 
             "Positive_Control_1", "Positive_Control_2", "Positive_Control_3", "Positive_Control_4",
             "Negative_Control")

# Plot the individual plots into one plot

ggplot(x_other_29_long, aes(x = Sample_ID, y = value, fill = Species)) +
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
