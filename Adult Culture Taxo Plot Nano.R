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
setwd("C:/Users/serghioi/Documents/QIB/PhD - Development and Evolution Of The Infant Skin Microbiome/Data Collection/DNA Extrac. Method Development/Data Plots/Promega Maxwell FMH Volunteer Swabs Extraction Run 5/Nanopore")

###################################################################################################

# Import the csv file.
Volunteer_1_Swab_1_Culture <- read_csv("0755-Culture-1-Brack-Clean.tabular.csv")
# Select only the "name" and "abundance" columns.
Volunteer_1_Swab_1_Culture <- Volunteer_1_Swab_1_Culture %>% select(name, fraction_total_reads)
# Rename the abundance column as the sample Id name.
names(Volunteer_1_Swab_1_Culture)[names(Volunteer_1_Swab_1_Culture) == "fraction_total_reads"] <- "Volunteer_1_Swab_1_Culture"

Volunteer_1_Swab_2_Culture <- read_csv("0755-Culture-2-Brack-Clean.tabular.csv")
Volunteer_1_Swab_2_Culture <- Volunteer_1_Swab_2_Culture %>% select(name, fraction_total_reads)
names(Volunteer_1_Swab_2_Culture)[names(Volunteer_1_Swab_2_Culture) == "fraction_total_reads"] <- "Volunteer_1_Swab_2_Culture"

Volunteer_2_Swab_1_Culture <- read_csv("0755-Culture-3-Brack-Clean.tabular.csv")
Volunteer_2_Swab_1_Culture <- Volunteer_2_Swab_1_Culture %>% select(name, fraction_total_reads)
names(Volunteer_2_Swab_1_Culture)[names(Volunteer_2_Swab_1_Culture) == "fraction_total_reads"] <- "Volunteer_2_Swab_1_Culture"

Volunteer_2_Swab_2_Culture <- read_csv("0755-Culture-4-Brack-Clean.tabular.csv")
Volunteer_2_Swab_2_Culture <- Volunteer_2_Swab_2_Culture %>% select(name, fraction_total_reads)
names(Volunteer_2_Swab_2_Culture)[names(Volunteer_2_Swab_2_Culture) == "fraction_total_reads"] <- "Volunteer_2_Swab_2_Culture"

Volunteer_3_Swab_1_Culture <- read_csv("0755-Culture-5-Brack-Clean.tabular.csv")
Volunteer_3_Swab_1_Culture <- Volunteer_3_Swab_1_Culture %>% select(name, fraction_total_reads)
names(Volunteer_3_Swab_1_Culture)[names(Volunteer_3_Swab_1_Culture) == "fraction_total_reads"] <- "Volunteer_3_Swab_1_Culture"

Volunteer_3_Swab_2_Culture <- read_csv("0755-Culture-6-Brack-Clean.tabular.csv")
Volunteer_3_Swab_2_Culture <- Volunteer_3_Swab_2_Culture %>% select(name, fraction_total_reads)
names(Volunteer_3_Swab_2_Culture)[names(Volunteer_3_Swab_2_Culture) == "fraction_total_reads"] <- "Volunteer_3_Swab_2_Culture"

Volunteer_4_Swab_1_Culture <- read_csv("0755-Culture-7-Brack-Clean.tabular.csv")
Volunteer_4_Swab_1_Culture <- Volunteer_4_Swab_1_Culture %>% select(name, fraction_total_reads)
names(Volunteer_4_Swab_1_Culture)[names(Volunteer_4_Swab_1_Culture) == "fraction_total_reads"] <- "Volunteer_4_Swab_1_Culture"

Volunteer_4_Swab_2_Culture <- read_csv("0755-Culture-8-Brack-Clean.tabular.csv")
Volunteer_4_Swab_2_Culture <- Volunteer_4_Swab_2_Culture %>% select(name, fraction_total_reads)
names(Volunteer_4_Swab_2_Culture)[names(Volunteer_4_Swab_2_Culture) == "fraction_total_reads"] <- "Volunteer_4_Swab_2_Culture"

Volunteer_5_Swab_1_Culture <- read_csv("0755-Culture-9-Brack-Clean.tabular.csv")
Volunteer_5_Swab_1_Culture <- Volunteer_5_Swab_1_Culture %>% select(name, fraction_total_reads)
names(Volunteer_5_Swab_1_Culture)[names(Volunteer_5_Swab_1_Culture) == "fraction_total_reads"] <- "Volunteer_5_Swab_1_Culture"

Volunteer_5_Swab_2_Culture <- read_csv("0755-Culture-10-Brack-Clean.tabular.csv")
Volunteer_5_Swab_2_Culture <- Volunteer_5_Swab_2_Culture %>% select(name, fraction_total_reads)
names(Volunteer_5_Swab_2_Culture)[names(Volunteer_5_Swab_2_Culture) == "fraction_total_reads"] <- "Volunteer_5_Swab_2_Culture"

Volunteer_6_Swab_1_Culture <- read_csv("0755-Culture-11-Brack-Clean.tabular.csv")
Volunteer_6_Swab_1_Culture <- Volunteer_6_Swab_1_Culture %>% select(name, fraction_total_reads)
names(Volunteer_6_Swab_1_Culture)[names(Volunteer_6_Swab_1_Culture) == "fraction_total_reads"] <- "Volunteer_6_Swab_1_Culture"

Volunteer_6_Swab_2_Culture <- read_csv("0755-Culture-12-Brack-Clean.tabular.csv")
Volunteer_6_Swab_2_Culture <- Volunteer_6_Swab_2_Culture %>% select(name, fraction_total_reads)
names(Volunteer_6_Swab_2_Culture)[names(Volunteer_6_Swab_2_Culture) == "fraction_total_reads"] <- "Volunteer_6_Swab_2_Culture"

Volunteer_7_Swab_1_Culture <- read_csv("0755-Culture-13-Brack-Clean.tabular.csv")
Volunteer_7_Swab_1_Culture <- Volunteer_7_Swab_1_Culture %>% select(name, fraction_total_reads)
names(Volunteer_7_Swab_1_Culture)[names(Volunteer_7_Swab_1_Culture) == "fraction_total_reads"] <- "Volunteer_7_Swab_1_Culture"

Volunteer_7_Swab_2_Culture <- read_csv("0755-Culture-14-Brack-Clean.tabular.csv")
Volunteer_7_Swab_2_Culture <- Volunteer_7_Swab_2_Culture %>% select(name, fraction_total_reads)
names(Volunteer_7_Swab_2_Culture)[names(Volunteer_7_Swab_2_Culture) == "fraction_total_reads"] <- "Volunteer_7_Swab_2_Culture"

Volunteer_8_Swab_1_Culture <- read_csv("0755-Culture-15-Brack-Clean.tabular.csv")
Volunteer_8_Swab_1_Culture <- Volunteer_8_Swab_1_Culture %>% select(name, fraction_total_reads)
names(Volunteer_8_Swab_1_Culture)[names(Volunteer_8_Swab_1_Culture) == "fraction_total_reads"] <- "Volunteer_8_Swab_1_Culture"

Volunteer_8_Swab_2_Culture <- read_csv("0755-Culture-16-Brack-Clean.tabular.csv")
Volunteer_8_Swab_2_Culture <- Volunteer_8_Swab_2_Culture %>% select(name, fraction_total_reads)
names(Volunteer_8_Swab_2_Culture)[names(Volunteer_8_Swab_2_Culture) == "fraction_total_reads"] <- "Volunteer_8_Swab_2_Culture"

Volunteer_9_Swab_1_Culture <- read_csv("0755-Culture-17-Brack-Clean.tabular.csv")
Volunteer_9_Swab_1_Culture <- Volunteer_9_Swab_1_Culture %>% select(name, fraction_total_reads)
names(Volunteer_9_Swab_1_Culture)[names(Volunteer_9_Swab_1_Culture) == "fraction_total_reads"] <- "Volunteer_9_Swab_1_Culture"

Volunteer_9_Swab_2_Culture <- read_csv("0755-Culture-18-Brack-Clean.tabular.csv")
Volunteer_9_Swab_2_Culture <- Volunteer_9_Swab_2_Culture %>% select(name, fraction_total_reads)
names(Volunteer_9_Swab_2_Culture)[names(Volunteer_9_Swab_2_Culture) == "fraction_total_reads"] <- "Volunteer_9_Swab_2_Culture"

Volunteer_10_Swab_1_Culture <- read_csv("0755-Culture-19-Brack-Clean.tabular.csv")
Volunteer_10_Swab_1_Culture <- Volunteer_10_Swab_1_Culture %>% select(name, fraction_total_reads)
names(Volunteer_10_Swab_1_Culture)[names(Volunteer_10_Swab_1_Culture) == "fraction_total_reads"] <- "Volunteer_10_Swab_1_Culture"

Volunteer_10_Swab_2_Culture <- read_csv("0755-Culture-20-Brack-Clean.tabular.csv")
Volunteer_10_Swab_2_Culture <- Volunteer_10_Swab_2_Culture %>% select(name, fraction_total_reads)
names(Volunteer_10_Swab_2_Culture)[names(Volunteer_10_Swab_2_Culture) == "fraction_total_reads"] <- "Volunteer_10_Swab_2_Culture"

Volunteer_11_Swab_1_Culture <- read_csv("0755-Culture-21-Brack-Clean.tabular.csv")
Volunteer_11_Swab_1_Culture <- Volunteer_11_Swab_1_Culture %>% select(name, fraction_total_reads)
names(Volunteer_11_Swab_1_Culture)[names(Volunteer_11_Swab_1_Culture) == "fraction_total_reads"] <- "Volunteer_11_Swab_1_Culture"

Volunteer_11_Swab_2_Culture <- read_csv("0755-Culture-22-Brack-Clean.tabular.csv")
Volunteer_11_Swab_2_Culture <- Volunteer_11_Swab_2_Culture %>% select(name, fraction_total_reads)
names(Volunteer_11_Swab_2_Culture)[names(Volunteer_11_Swab_2_Culture) == "fraction_total_reads"] <- "Volunteer_11_Swab_2_Culture"

Volunteer_12_Swab_1_Culture <- read_csv("0755-Culture-23-Brack-Clean.tabular.csv")
Volunteer_12_Swab_1_Culture <- Volunteer_12_Swab_1_Culture %>% select(name, fraction_total_reads)
names(Volunteer_12_Swab_1_Culture)[names(Volunteer_12_Swab_1_Culture) == "fraction_total_reads"] <- "Volunteer_12_Swab_1_Culture"

Volunteer_12_Swab_2_Culture <- read_csv("0755-Culture-24-Brack-Clean.tabular.csv")
Volunteer_12_Swab_2_Culture <- Volunteer_12_Swab_2_Culture %>% select(name, fraction_total_reads)
names(Volunteer_12_Swab_2_Culture)[names(Volunteer_12_Swab_2_Culture) == "fraction_total_reads"] <- "Volunteer_12_Swab_2_Culture"

Positive_Control <- read_csv("0755-Pos-Con-Brack-Clean.tabular.csv")
Positive_Control <- Positive_Control %>% select(name, fraction_total_reads)
names(Positive_Control)[names(Positive_Control) == "fraction_total_reads"] <- "Positive_Control"

Negative_Control <- read_csv("0755-Neg-Con-Brack-Clean.tabular.csv")
Negative_Control <- Negative_Control %>% select(name, fraction_total_reads)
names(Negative_Control)[names(Negative_Control) == "fraction_total_reads"] <- "Negative_Control"


# R can only merge two files each time.
# Merge the files together using the species "name" column.

merged_final <- Volunteer_1_Swab_1_Culture %>%
  full_join(Volunteer_1_Swab_2_Culture, by='name') %>%
  full_join(Volunteer_2_Swab_1_Culture, by='name') %>%
  full_join(Volunteer_2_Swab_2_Culture, by='name') %>%
  full_join(Volunteer_3_Swab_1_Culture, by='name') %>%
  full_join(Volunteer_3_Swab_2_Culture, by='name') %>%
  full_join(Volunteer_4_Swab_1_Culture, by='name') %>%
  full_join(Volunteer_4_Swab_2_Culture, by='name') %>%
  full_join(Volunteer_5_Swab_1_Culture, by='name') %>%
  full_join(Volunteer_5_Swab_2_Culture, by='name') %>%
  full_join(Volunteer_6_Swab_1_Culture, by='name') %>%
  full_join(Volunteer_6_Swab_2_Culture, by='name') %>%
  full_join(Volunteer_7_Swab_1_Culture, by='name') %>%
  full_join(Volunteer_7_Swab_2_Culture, by='name') %>%
  full_join(Volunteer_8_Swab_1_Culture, by='name') %>%
  full_join(Volunteer_8_Swab_2_Culture, by='name') %>%
  full_join(Volunteer_9_Swab_1_Culture, by='name') %>%
  full_join(Volunteer_9_Swab_2_Culture, by='name') %>%
  full_join(Volunteer_10_Swab_1_Culture, by='name') %>%
  full_join(Volunteer_10_Swab_2_Culture, by='name') %>%
  full_join(Volunteer_11_Swab_1_Culture, by='name') %>%
  full_join(Volunteer_11_Swab_2_Culture, by='name') %>%
  full_join(Volunteer_12_Swab_1_Culture, by='name') %>%
  full_join(Volunteer_12_Swab_2_Culture, by='name') %>%
  full_join(Positive_Control, by='name') %>%
  full_join(Negative_Control, by='name')

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
  filter(Sample_ID %in% c("Volunteer_1_Swab_1_Culture"))

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
                    Bacillus.subtilis = "purple",
                    Acinetobacter.baumannii = "cadetblue1",
                    Staphylococcus.haemolyticus = "green4",
                    Corynebacterium.striatum = "yellow",
                    Staphylococcus.capitis = "black",
                    Micrococcus.luteus = "darkolivegreen1",
                    Acinetobacter.radioresistens = "red4",
                    Staphylococcus.lugdunensis = "sienna4",
                    other = "grey")

x_other_long <- subset(x_other_long, Sample_ID %in% c("Volunteer_1_Swab_1_Culture"))

# organise x axis how you want
x.order <- c("Volunteer_1_Swab_1_Culture")

# Plot the data as a stacked bar plot.
ggplot(x_other_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_1_Swab_1_Culture",
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
  filter(Sample_ID %in% c("Volunteer_1_Swab_2_Culture"))

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
                    Acinetobacter.baumannii = "cadetblue1",
                    Corynebacterium.striatum = "green4",
                    Staphylococcus.lugdunensis = "yellow",
                    Staphylococcus.haemolyticus = "black",
                    Micrococcus.luteus = "darkolivegreen1",
                    Acinetobacter.radioresistens = "red4",
                    Kocuria.rhizophila = "sienna4",
                    other = "grey")

x_other_1_long <- subset(x_other_1_long, Sample_ID %in% c("Volunteer_1_Swab_2_Culture"))

# organise x axis how you want
x.order <- c("Volunteer_1_Swab_2_Culture")

# Plot the data as a stacked bar plot.
ggplot(x_other_1_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_1_Swab_2_Culture",
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
  filter(Sample_ID %in% c("Volunteer_2_Swab_1_Culture"))

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

x_other_2_long <- subset(x_other_2_long, Sample_ID %in% c("Volunteer_2_Swab_1_Culture"))

# organise x axis how you want
x.order <- c("Volunteer_2_Swab_1_Culture")

# Plot the data as a stacked bar plot.
ggplot(x_other_2_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_2_Swab_1_Culture",
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
  filter(Sample_ID %in% c("Volunteer_2_Swab_2_Culture"))

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

x_other_3_long <- subset(x_other_3_long, Sample_ID %in% c("Volunteer_2_Swab_2_Culture"))

# organise x axis how you want
x.order <- c("Volunteer_2_Swab_2_Culture")

# Plot the data as a stacked bar plot.
ggplot(x_other_3_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_2_Swab_2_Culture",
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
  filter(Sample_ID %in% c("Volunteer_3_Swab_1_Culture"))

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
                    Acinetobacter.baumannii = "purple",
                    Kocuria.rhizophila = "cadetblue1",
                    Staphylococcus.hominis = "green4",
                    Staphylococcus.haemolyticus = "yellow",
                    Corynebacterium.striatum = "black",
                    Bacillus.cereus = "darkolivegreen1",
                    Moraxella.osloensis = "red4",
                    Micrococcus.luteus = "sienna4",
                    other = "grey")

x_other_4_long <- subset(x_other_4_long, Sample_ID %in% c("Volunteer_3_Swab_1_Culture"))

# organise x axis how you want
x.order <- c("Volunteer_3_Swab_1_Culture")

# Plot the data as a stacked bar plot.
ggplot(x_other_4_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_3_Swab_1_Culture",
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
  filter(Sample_ID %in% c("Volunteer_3_Swab_2_Culture"))

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

x_other_5_long <- subset(x_other_5_long, Sample_ID %in% c("Volunteer_3_Swab_2_Culture"))

# organise x axis how you want
x.order <- c("Volunteer_3_Swab_2_Culture")

# Plot the data as a stacked bar plot.
ggplot(x_other_5_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_3_Swab_2_Culture",
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
  filter(Sample_ID %in% c("Volunteer_4_Swab_1_Culture"))

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

x_other_6_long <- subset(x_other_6_long, Sample_ID %in% c("Volunteer_4_Swab_1_Culture"))

# organise x axis how you want
x.order <- c("Volunteer_4_Swab_1_Culture")

# Plot the data as a stacked bar plot.
ggplot(x_other_6_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_4_Swab_1_Culture",
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
  filter(Sample_ID %in% c("Volunteer_4_Swab_2_Culture"))

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
                    Acinetobacter.baumannii = "green4",
                    Staphylococcus.hominis = "yellow",
                    Corynebacterium.striatum = "black",
                    Micrococcus.luteus = "darkolivegreen1",
                    Acinetobacter.radioresistens = "red4",
                    Kocuria.rhizophila = "sienna4",
                    other = "grey")

x_other_7_long <- subset(x_other_7_long, Sample_ID %in% c("Volunteer_4_Swab_2_Culture"))

# organise x axis how you want
x.order <- c("Volunteer_4_Swab_2_Culture")

# Plot the data as a stacked bar plot.
ggplot(x_other_7_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_4_Swab_2_Culture",
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
  filter(Sample_ID %in% c("Volunteer_5_Swab_1_Culture"))

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
                    Acinetobacter.baumannii = "purple",
                    Corynebacterium.striatum = "cadetblue1",
                    Staphylococcus.capitis = "green4",
                    Staphylococcus.haemolyticus = "yellow",
                    Moraxella.osloensis = "black",
                    Micrococcus.luteus = "darkolivegreen1",
                    Acinetobacter.radioresistens = "red4",
                    Staphylococcus.lugdunensis = "sienna4",
                    other = "grey")

x_other_8_long <- subset(x_other_8_long, Sample_ID %in% c("Volunteer_5_Swab_1_Culture"))

# organise x axis how you want
x.order <- c("Volunteer_5_Swab_1_Culture")

# Plot the data as a stacked bar plot.
ggplot(x_other_8_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_5_Swab_1_Culture",
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
  filter(Sample_ID %in% c("Volunteer_5_Swab_2_Culture"))

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

x_other_9_long <- subset(x_other_9_long, Sample_ID %in% c("Volunteer_5_Swab_2_Culture"))

# organise x axis how you want
x.order <- c("Volunteer_5_Swab_2_Culture")

# Plot the data as a stacked bar plot.
ggplot(x_other_9_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_5_Swab_2_Culture",
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
  filter(Sample_ID %in% c("Volunteer_6_Swab_1_Culture"))

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
                    Staphylococcus.epidermidis = "red",
                    Staphylococcus.hominis = "purple",
                    Acinetobacter.baumannii = "cadetblue1",
                    Staphylococcus.capitis = "green4",
                    Staphylococcus.haemolyticus = "yellow",
                    Corynebacterium.striatum = "black",
                    Acinetobacter.radioresistens = "darkolivegreen1",
                    Staphylococcus.lugdunensis = "red4",
                    Kocuria.rhizophila = "sienna4",
                    other = "grey")

x_other_10_long <- subset(x_other_10_long, Sample_ID %in% c("Volunteer_6_Swab_1_Culture"))

# organise x axis how you want
x.order <- c("Volunteer_6_Swab_1_Culture")

# Plot the data as a stacked bar plot.
ggplot(x_other_10_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_6_Swab_1_Culture",
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
  filter(Sample_ID %in% c("Volunteer_6_Swab_2_Culture"))

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
                    Acinetobacter.baumannii = "cadetblue1",
                    Staphylococcus.hominis = "green4",
                    Corynebacterium.striatum = "yellow",
                    Acinetobacter.lwoffii = "black",
                    Staphylococcus.haemolyticus = "darkolivegreen1",
                    Acinetobacter.radioresistens = "red4",
                    Staphylococcus.lugdunensis = "sienna4",
                    other = "grey")

x_other_11_long <- subset(x_other_11_long, Sample_ID %in% c("Volunteer_6_Swab_2_Culture"))

# organise x axis how you want
x.order <- c("Volunteer_6_Swab_2_Culture")

# Plot the data as a stacked bar plot.
ggplot(x_other_11_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_6_Swab_2_Culture",
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
  filter(Sample_ID %in% c("Volunteer_7_Swab_1_Culture"))

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
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Staphylococcus.hominis = "red",
                    Acinetobacter.baumannii = "purple",
                    Staphylococcus.pasteuri = "cadetblue1",
                    Micrococcus.luteus = "green4",
                    Corynebacterium.striatum = "yellow",
                    Staphylococcus.capitis = "black",
                    Staphylococcus.haemolyticus = "darkolivegreen1",
                    Acinetobacter.radioresistens = "red4",
                    Staphylococcus.lugdunensis = "sienna4",
                    other = "grey")

x_other_12_long <- subset(x_other_12_long, Sample_ID %in% c("Volunteer_7_Swab_1_Culture"))

# organise x axis how you want
x.order <- c("Volunteer_7_Swab_1_Culture")

# Plot the data as a stacked bar plot.
ggplot(x_other_12_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_7_Swab_1_Culture",
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
  filter(Sample_ID %in% c("Volunteer_7_Swab_2_Culture"))

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
                    Acinetobacter.baumannii = "red",
                    Staphylococcus.hominis = "purple",
                    Corynebacterium.striatum = "cadetblue1",
                    Micrococcus.luteus = "green4",
                    Staphylococcus.aureus = "yellow",
                    Staphylococcus.capitis = "black",
                    Staphylococcus.haemolyticus = "darkolivegreen1",
                    Cutibacterium.acnes = "red4",
                    Acinetobacter.radioresistens = "sienna4",
                    other = "grey")

x_other_13_long <- subset(x_other_13_long, Sample_ID %in% c("Volunteer_7_Swab_2_Culture"))

# organise x axis how you want
x.order <- c("Volunteer_7_Swab_2_Culture")

# Plot the data as a stacked bar plot.
ggplot(x_other_13_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_7_Swab_2_Culture",
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
  filter(Sample_ID %in% c("Volunteer_8_Swab_1_Culture"))

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
                    Acinetobacter.baumannii = "red",
                    Micrococcus.luteus = "purple",
                    Corynebacterium.striatum = "cadetblue1",
                    Staphylococcus.hominis = "green4",
                    Staphylococcus.capitis = "yellow",
                    Staphylococcus.haemolyticus = "black",
                    Acinetobacter.radioresistens = "darkolivegreen1",
                    Staphylococcus.lugdunensis = "red4",
                    Kocuria.rhizophila = "sienna4",
                    other = "grey")

x_other_14_long <- subset(x_other_14_long, Sample_ID %in% c("Volunteer_8_Swab_1_Culture"))

# organise x axis how you want
x.order <- c("Volunteer_8_Swab_1_Culture")

# Plot the data as a stacked bar plot.
ggplot(x_other_14_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_8_Swab_1_Culture",
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
  filter(Sample_ID %in% c("Volunteer_8_Swab_2_Culture"))

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
                    Acinetobacter.baumannii = "red",
                    Staphylococcus.haemolyticus = "purple",
                    Staphylococcus.hominis = "cadetblue1",
                    Micrococcus.luteus = "green4",
                    Corynebacterium.striatum = "yellow",
                    Staphylococcus.capitis = "black",
                    Acinetobacter.radioresistens = "darkolivegreen1",
                    Staphylococcus.lugdunensis = "red4",
                    Kocuria.rhizophila = "sienna4",
                    other = "grey")

x_other_15_long <- subset(x_other_15_long, Sample_ID %in% c("Volunteer_8_Swab_2_Culture"))

# organise x axis how you want
x.order <- c("Volunteer_8_Swab_2_Culture")

# Plot the data as a stacked bar plot.
ggplot(x_other_15_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_8_Swab_2_Culture",
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
  filter(Sample_ID %in% c("Volunteer_9_Swab_1_Culture"))

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
                    Acinetobacter.baumannii = "red",
                    Kocuria.rhizophila = "purple",
                    Micrococcus.luteus = "cadetblue1",
                    Staphylococcus.hominis = "green4",
                    Staphylococcus.capitis = "yellow",
                    Corynebacterium.striatum = "black",
                    Staphylococcus.haemolyticus = "darkolivegreen1",
                    Acinetobacter.radioresistens = "red4",
                    Staphylococcus.lugdunensis = "sienna4",
                    other = "grey")

x_other_16_long <- subset(x_other_16_long, Sample_ID %in% c("Volunteer_9_Swab_1_Culture"))

# organise x axis how you want
x.order <- c("Volunteer_9_Swab_1_Culture")

# Plot the data as a stacked bar plot.
ggplot(x_other_16_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_9_Swab_1_Culture",
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
  filter(Sample_ID %in% c("Volunteer_9_Swab_2_Culture"))

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
speciesPalette <- c(Acinetobacter.baumannii = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Pseudomonas.oryzihabitans = "purple",
                    Staphylococcus.hominis = "cadetblue1",
                    Corynebacterium.striatum = "green4",
                    Staphylococcus.capitis = "yellow",
                    Micrococcus.luteus = "black",
                    Acinetobacter.radioresistens = "darkolivegreen1",
                    Staphylococcus.haemolyticus = "red4",
                    Staphylococcus.lugdunensis = "sienna4",
                    other = "grey")

x_other_17_long <- subset(x_other_17_long, Sample_ID %in% c("Volunteer_9_Swab_2_Culture"))

# organise x axis how you want
x.order <- c("Volunteer_9_Swab_2_Culture")

# Plot the data as a stacked bar plot.
ggplot(x_other_17_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_9_Swab_2_Culture",
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
  filter(Sample_ID %in% c("Volunteer_10_Swab_1_Culture"))

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
                    Acinetobacter.baumannii = "cadetblue1",
                    Corynebacterium.striatum = "green4",
                    Staphylococcus.haemolyticus = "yellow",
                    Micrococcus.luteus = "black",
                    Cutibacterium.acnes = "darkolivegreen1",
                    Acinetobacter.radioresistens = "red4",
                    Staphylococcus.lugdunensis = "sienna4",
                    other = "grey")

x_other_18_long <- subset(x_other_18_long, Sample_ID %in% c("Volunteer_10_Swab_1_Culture"))

# organise x axis how you want
x.order <- c("Volunteer_10_Swab_1_Culture")

# Plot the data as a stacked bar plot.
ggplot(x_other_18_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_10_Swab_1_Culture",
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
  filter(Sample_ID %in% c("Volunteer_10_Swab_2_Culture"))

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
                    Acinetobacter.baumannii = "purple",
                    Corynebacterium.striatum = "cadetblue1",
                    Staphylococcus.capitis = "green4",
                    Staphylococcus.haemolyticus = "yellow",
                    Micrococcus.luteus = "black",
                    Staphylococcus.lugdunensis = "darkolivegreen1",
                    Acinetobacter.radioresistens = "red4",
                    Kocuria.rhizophila = "sienna4",
                    other = "grey")

x_other_19_long <- subset(x_other_19_long, Sample_ID %in% c("Volunteer_10_Swab_2_Culture"))

# organise x axis how you want
x.order <- c("Volunteer_10_Swab_2_Culture")

# Plot the data as a stacked bar plot.
ggplot(x_other_19_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_10_Swab_2_Culture",
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
  filter(Sample_ID %in% c("Volunteer_11_Swab_1_Culture"))

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
speciesPalette <- c(Staphylococcus.haemolyticus = "blue1",
                    Staphylococcus.capitis = "red",
                    Staphylococcus.epidermidis = "purple",
                    Acinetobacter.baumannii = "cadetblue1",
                    Staphylococcus.hominis = "green4",
                    Corynebacterium.striatum = "yellow",
                    Micrococcus.luteus = "black",
                    Staphylococcus.lugdunensis = "darkolivegreen1",
                    Acinetobacter.radioresistens = "red4",
                    Kocuria.rhizophila = "sienna4",
                    other = "grey")

x_other_20_long <- subset(x_other_20_long, Sample_ID %in% c("Volunteer_11_Swab_1_Culture"))

# organise x axis how you want
x.order <- c("Volunteer_11_Swab_1_Culture")

# Plot the data as a stacked bar plot.
ggplot(x_other_20_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_11_Swab_1_Culture",
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
  filter(Sample_ID %in% c("Volunteer_11_Swab_2_Culture"))

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
speciesPalette <- c(Staphylococcus.epidermidis = "blue1",
                    Staphylococcus.hominis = "red",
                    Staphylococcus.capitis = "purple",
                    Corynebacterium.striatum = "cadetblue1",
                    Acinetobacter.baumannii = "green4",
                    Staphylococcus.haemolyticus = "yellow",
                    Micrococcus.luteus = "black",
                    Acinetobacter.radioresistens = "darkolivegreen1",
                    Staphylococcus.lugdunensis = "red4",
                    Kocuria.rhizophila = "sienna4",
                    other = "grey")

x_other_21_long <- subset(x_other_21_long, Sample_ID %in% c("Volunteer_11_Swab_2_Culture"))

# organise x axis how you want
x.order <- c("Volunteer_11_Swab_2_Culture")

# Plot the data as a stacked bar plot.
ggplot(x_other_21_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_11_Swab_2_Culture",
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
  filter(Sample_ID %in% c("Volunteer_12_Swab_1_Culture"))

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
                    Acinetobacter.baumannii = "red",
                    Corynebacterium.striatum = "purple",
                    Staphylococcus.hominis = "cadetblue1",
                    Staphylococcus.capitis = "green4",
                    Staphylococcus.haemolyticus = "yellow",
                    Micrococcus.luteus = "black",
                    Acinetobacter.radioresistens = "darkolivegreen1",
                    Staphylococcus.lugdunensis = "red4",
                    Kocuria.rhizophila = "sienna4",
                    other = "grey")

x_other_22_long <- subset(x_other_22_long, Sample_ID %in% c("Volunteer_12_Swab_1_Culture"))

# organise x axis how you want
x.order <- c("Volunteer_12_Swab_1_Culture")

# Plot the data as a stacked bar plot.
ggplot(x_other_22_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_12_Swab_1_Culture",
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
  filter(Sample_ID %in% c("Volunteer_12_Swab_2_Culture"))

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

x_other_23_long <- subset(x_other_23_long, Sample_ID %in% c("Volunteer_12_Swab_2_Culture"))

# organise x axis how you want
x.order <- c("Volunteer_12_Swab_2_Culture")

# Plot the data as a stacked bar plot.
ggplot(x_other_23_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Volunteer_12_Swab_2_Culture",
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
  filter(Sample_ID %in% c("Positive_Control"))

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
                    Acinetobacter.baumannii = "purple",
                    Streptococcus.mitis = "cadetblue1",
                    Acinetobacter.lwoffii = "green4",
                    Staphylococcus.hominis = "yellow",
                    Micrococcus.luteus = "black",
                    Cutibacterium.acnes = "darkolivegreen1",
                    Staphylococcus.capitis = "red4",
                    Acinetobacter.johnsonii = "sienna4",
                    other = "grey")

x_other_24_long <- subset(x_other_24_long, Sample_ID %in% c("Positive_Control"))

# organise x axis how you want
x.order <- c("Positive_Control")

# Plot the data as a stacked bar plot.
ggplot(x_other_24_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Positive_Control",
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
x_other_25 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_25 <- rownames_to_column(x_other_25, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_25_long <- melt(x_other_25, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_25_long$Species)

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
                    Kocuria.rhizophila = "sienna4",
                    other = "grey")

x_other_25_long <- subset(x_other_25_long, Sample_ID %in% c("Negative_Control"))

# organise x axis how you want
x.order <- c("Negative_Control")

# Plot the data as a stacked bar plot.
ggplot(x_other_25_long, aes(x = Sample_ID, y = value, fill = Species)) +
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

x_other_26_long <- rbind.data.frame(x_other_long, x_other_1_long, x_other_2_long, x_other_3_long, 
                                    x_other_4_long, x_other_5_long, x_other_6_long, x_other_7_long, 
                                    x_other_8_long, x_other_9_long, x_other_10_long, x_other_11_long,
                                    x_other_12_long, x_other_13_long, x_other_14_long, x_other_15_long, 
                                    x_other_16_long, x_other_17_long, x_other_18_long, x_other_19_long,
                                    x_other_20_long, x_other_21_long, x_other_22_long, x_other_23_long, 
                                    x_other_24_long, x_other_25_long)

# Find out all the species to be plotted
unique(x_other_26_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Staphylococcus.hominis = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Bacillus.subtilis = "purple",
                    Acinetobacter.baumannii = "cadetblue1",
                    Staphylococcus.haemolyticus = "green4",
                    Corynebacterium.striatum  = "yellow",
                    Staphylococcus.capitis = "black",
                    Micrococcus.luteus = "darkolivegreen1",
                    Acinetobacter.radioresistens = "red4",
                    Staphylococcus.lugdunensis = "sienna4",
                    Kocuria.rhizophila = "dimgray",                          
                    Staphylococcus.saprophyticus = "blue4",                                      
                    Staphylococcus.sp..AntiMn.1  = "blueviolet",                       
                    Acinetobacter.lwoffii = "plum",
                    Staphylococcus.pasteuri = "brown4",                              
                    Cutibacterium.acnes = "green3",                     
                    Bacillus.cereus = "cornflowerblue",
                    Moraxella.osloensis = "chocolate",             
                    Acinetobacter.johnsonii = "chocolate1",           
                    Staphylococcus.aureus = "darkmagenta",                
                    Pseudomonas.oryzihabitans = "khaki4",           
                    Streptococcus.mitis ="cyan4",              
                    other = "grey")


# Order x axis labels

x.order <- c("Volunteer_1_Swab_1_Culture", "Volunteer_1_Swab_2_Culture", "Volunteer_2_Swab_1_Culture",
             "Volunteer_2_Swab_2_Culture", "Volunteer_3_Swab_1_Culture", "Volunteer_3_Swab_2_Culture",
             "Volunteer_4_Swab_1_Culture", "Volunteer_4_Swab_2_Culture", "Volunteer_5_Swab_1_Culture",
             "Volunteer_5_Swab_2_Culture", "Volunteer_6_Swab_1_Culture", "Volunteer_6_Swab_2_Culture",
             "Volunteer_7_Swab_1_Culture", "Volunteer_7_Swab_2_Culture", "Volunteer_8_Swab_1_Culture",
             "Volunteer_8_Swab_2_Culture", "Volunteer_9_Swab_1_Culture", "Volunteer_9_Swab_2_Culture",
             "Volunteer_10_Swab_1_Culture", "Volunteer_10_Swab_2_Culture", "Volunteer_11_Swab_1_Culture",
             "Volunteer_11_Swab_2_Culture", "Volunteer_12_Swab_1_Culture", "Volunteer_12_Swab_2_Culture",
             "Positive_Control", "Negative_Control")

# Plot the individual plots into one plot

ggplot(x_other_26_long, aes(x = Sample_ID, y = value, fill = Species)) +
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
