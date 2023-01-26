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
setwd("C:/Users/serghioi/Documents/QIB/PhD - Development and Evolution Of The Infant Skin Microbiome/Data Collection/DNA Extrac. Method Development/Data Plots/Promega Maxwell DNA Extraction PEARL Baby Swabs Run 6/Nanopore")

# Import the csv file.
Baby_1_Month_4_Swab <- read_csv("0862-E001-Brack.csv")
# Select only the "name" and "fraction_total_reads" columns.
Baby_1_Month_4_Swab <- Baby_1_Month_4_Swab %>% select(name, fraction_total_reads)
# Rename the "fraction_total_reads" column as the sample Id name.
names(Baby_1_Month_4_Swab)[names(Baby_1_Month_4_Swab) == "fraction_total_reads"] <- "Baby_1_Month_4_Swab"

# Repeat with the other csv files.
Baby_2_Month_4_Swab <- read_csv("0862-E002-Brack.csv")
Baby_2_Month_4_Swab <- Baby_2_Month_4_Swab %>% select(name, fraction_total_reads)
names(Baby_2_Month_4_Swab)[names(Baby_2_Month_4_Swab) == "fraction_total_reads"] <- "Baby_2_Month_4_Swab"

Baby_3_Month_4_Swab <- read_csv("0862-E003-Brack.csv")
Baby_3_Month_4_Swab <- Baby_3_Month_4_Swab %>% select(name, fraction_total_reads)
names(Baby_3_Month_4_Swab)[names(Baby_3_Month_4_Swab) == "fraction_total_reads"] <- "Baby_3_Month_4_Swab"

Baby_5_Twin_1_Month_4_Swab <- read_csv("0862-E005-1-Brack.csv")
Baby_5_Twin_1_Month_4_Swab <- Baby_5_Twin_1_Month_4_Swab %>% select(name, fraction_total_reads)
names(Baby_5_Twin_1_Month_4_Swab)[names(Baby_5_Twin_1_Month_4_Swab) == "fraction_total_reads"] <- "Baby_5_Twin_1_Month_4_Swab"

Baby_5_Twin_2_Month_4_Swab <- read_csv("0862-E005-2-Brack.csv")
Baby_5_Twin_2_Month_4_Swab <- Baby_5_Twin_2_Month_4_Swab %>% select(name, fraction_total_reads)
names(Baby_5_Twin_2_Month_4_Swab)[names(Baby_5_Twin_2_Month_4_Swab) == "fraction_total_reads"] <- "Baby_5_Twin_2_Month_4_Swab"

Baby_6_Month_4_Swab <- read_csv("0862-E006-Brack.csv") 
Baby_6_Month_4_Swab <- Baby_6_Month_4_Swab %>% select(name, fraction_total_reads)
names(Baby_6_Month_4_Swab)[names(Baby_6_Month_4_Swab) == "fraction_total_reads"] <- "Baby_6_Month_4_Swab"

Baby_7_Month_4_Swab <- read_csv("0862-E007-Brack.csv")
Baby_7_Month_4_Swab <- Baby_7_Month_4_Swab %>% select(name, fraction_total_reads)
names(Baby_7_Month_4_Swab)[names(Baby_7_Month_4_Swab) == "fraction_total_reads"] <- "Baby_7_Month_4_Swab"

Baby_8_Month_4_Swab <- read_csv("0862-E008-Brack.csv")
Baby_8_Month_4_Swab <- Baby_8_Month_4_Swab %>% select(name, fraction_total_reads)
names(Baby_8_Month_4_Swab)[names(Baby_8_Month_4_Swab) == "fraction_total_reads"] <- "Baby_8_Month_4_Swab"

Baby_9_Month_4_Swab <- read_csv("0862-E009-Brack.csv")
Baby_9_Month_4_Swab <- Baby_9_Month_4_Swab %>% select(name, fraction_total_reads)
names(Baby_9_Month_4_Swab)[names(Baby_9_Month_4_Swab) == "fraction_total_reads"] <- "Baby_9_Month_4_Swab"

Baby_10_Month_4_Swab <- read_csv("0862-E010-Brack.csv")
Baby_10_Month_4_Swab <- Baby_10_Month_4_Swab %>% select(name, fraction_total_reads)
names(Baby_10_Month_4_Swab)[names(Baby_10_Month_4_Swab) == "fraction_total_reads"] <- "Baby_10_Month_4_Swab"

Negative_Control <- read_csv("0862-Negative-Control-Brack.csv")
Negative_Control <- Negative_Control %>% select(name, fraction_total_reads)
names(Negative_Control)[names(Negative_Control) == "fraction_total_reads"] <- "Negative_Control"

Positive_Control <- read_csv("0862-Positive-Control-Brack.csv")
Positive_Control <- Positive_Control %>% select(name, fraction_total_reads)
names(Positive_Control)[names(Positive_Control) == "fraction_total_reads"] <- "Positive_Control"


# R can only merge two files each time.
# Merge the files together using the species "name" column.

merged_final <- Baby_1_Month_4_Swab %>%
  full_join(Baby_2_Month_4_Swab, by='name') %>%
  full_join(Baby_3_Month_4_Swab, by='name') %>%
  full_join(Baby_5_Twin_1_Month_4_Swab, by='name') %>%
  full_join(Baby_5_Twin_2_Month_4_Swab, by='name') %>%
  full_join(Baby_6_Month_4_Swab, by='name') %>%
  full_join(Baby_7_Month_4_Swab, by='name') %>%
  full_join(Baby_8_Month_4_Swab, by='name') %>%
  full_join(Baby_9_Month_4_Swab, by='name') %>%
  full_join(Baby_10_Month_4_Swab, by='name') %>%
  full_join(Negative_Control, by='name') %>%
  full_join(Positive_Control, by='name') 

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
write_csv(merged_final_ordered_transposed, "merged_final.csv")


###################################################################################################
# Make a stacked bar plot of the results.

# Select the top 10 most abundant species.
merged_final_ordered_transposed <- rownames_to_column(merged_final_ordered_transposed, var = "Sample_ID")

subsample <- merged_final_ordered_transposed %>%
  filter(Sample_ID %in% c("Baby_1_Month_4_Swab"))

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
speciesPalette <- c(Streptococcus.salivarius = "blue1",
                    Bifidobacterium.longum = "red",
                    Bifidobacterium.breve = "purple",
                    Streptococcus.thermophilus = "cadetblue1",
                    Streptococcus.parasanguinis = "green4",
                    Streptococcus.mitis = "yellow",
                    Bacteroides.fragilis = "black",
                    Rothia.mucilaginosa = "darkolivegreen1",
                    Cutibacterium.acnes = "red4",
                    Streptococcus.equinus = "sienna4",
                    other = "grey")

x_other_long <- subset(x_other_long, Sample_ID %in% c("Baby_1_Month_4_Swab"))

# organise x axis how you want
x.order <- c("Baby_1_Month_4_Swab")

# Plot the data as a stacked bar plot.
ggplot(x_other_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_1_Month_4_Swab",
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
  filter(Sample_ID %in% c("Baby_2_Month_4_Swab"))

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
speciesPalette <- c(Bifidobacterium.longum = "blue1",
                    Acinetobacter.lwoffii = "red",
                    Paracoccus.yeei = "purple",
                    Stenotrophomonas.rhizophila = "cadetblue1",
                    Staphylococcus.epidermidis = "green4",
                    Stenotrophomonas.sp..LM091 = "yellow",
                    Pseudomonas.putida = "black",
                    Moraxella.osloensis = "darkolivegreen1",
                    Cutibacterium.acnes = "red4",
                    Bacteroides.fragilis = "sienna4",
                    other = "grey")

x_other_1_long <- subset(x_other_1_long, Sample_ID %in% c("Baby_2_Month_4_Swab"))

# organise x axis how you want
x.order <- c("Baby_2_Month_4_Swab")

# Plot the data as a stacked bar plot.
ggplot(x_other_1_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_2_Month_4_Swab",
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
  filter(Sample_ID %in% c("Baby_3_Month_4_Swab"))

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
speciesPalette <- c(Acinetobacter.lwoffii = "blue1",
                    Streptococcus.mitis = "red",
                    Xanthomonas.campestris = "purple",
                    Cutibacterium.acnes = "cadetblue1",
                    Staphylococcus.epidermidis = "green4",
                    Bifidobacterium.longum = "yellow",
                    Paracoccus.yeei = "black",
                    Moraxella.osloensis = "darkolivegreen1",
                    Staphylococcus.aureus = "red4",
                    Staphylococcus.hominis = "sienna4",
                    other = "grey")

x_other_2_long <- subset(x_other_2_long, Sample_ID %in% c("Baby_3_Month_4_Swab"))

# organise x axis how you want
x.order <- c("Baby_3_Month_4_Swab")

# Plot the data as a stacked bar plot.
ggplot(x_other_2_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_3_Month_4_Swab",
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
  filter(Sample_ID %in% c("Baby_5_Twin_1_Month_4_Swab"))

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
speciesPalette <- c(Streptococcus.mitis = "blue1",
                    Streptococcus.thermophilus = "red",
                    Cutibacterium.acnes = "purple",
                    Streptococcus.parasanguinis = "cadetblue1",
                    Moraxella.osloensis = "green4",
                    Fervidobacterium.pennivorans = "yellow",
                    Paracoccus.yeei = "black",
                    Pseudomonas.putida = "darkolivegreen1",
                    Rothia.mucilaginosa = "red4",
                    Bifidobacterium.longum = "sienna4",
                    other = "grey")

x_other_3_long <- subset(x_other_3_long, Sample_ID %in% c("Baby_5_Twin_1_Month_4_Swab"))

# organise x axis how you want
x.order <- c("Baby_5_Twin_1_Month_4_Swab")

# Plot the data as a stacked bar plot.
ggplot(x_other_3_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_5_Twin_1_Month_4_Swab",
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
  filter(Sample_ID %in% c("Baby_5_Twin_2_Month_4_Swab"))

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
                    Streptococcus.mitis = "red",
                    Streptococcus.pneumoniae = "purple",
                    Streptococcus.salivarius = "cadetblue1",
                    Cutibacterium.acnes = "green4",
                    Streptococcus.parasanguinis = "yellow",
                    Fervidobacterium.pennivorans = "black",
                    Streptococcus.thermophilus = "darkolivegreen1",
                    Rothia.mucilaginosa = "red4",
                    Paracoccus.yeei = "sienna4",
                    other = "grey")

x_other_4_long <- subset(x_other_4_long, Sample_ID %in% c("Baby_5_Twin_2_Month_4_Swab"))

# organise x axis how you want
x.order <- c("Baby_5_Twin_2_Month_4_Swab")

# Plot the data as a stacked bar plot.
ggplot(x_other_4_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_5_Twin_2_Month_4_Swab",
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
  filter(Sample_ID %in% c("Baby_6_Month_4_Swab"))

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
speciesPalette <- c(Micrococcus.luteus = "blue1",
                    Acinetobacter.lwoffii = "red",
                    Bifidobacterium.longum = "purple",
                    Enterobacter.cloacae = "cadetblue1",
                    Moraxella.osloensis = "green4",
                    Bifidobacterium.bifidum = "yellow",
                    Cutibacterium.acnes = "black",
                    Kocuria.rhizophila = "darkolivegreen1",
                    Streptococcus.salivarius = "red4",
                    Paracoccus.yeei = "sienna4",
                    other = "grey")

x_other_5_long <- subset(x_other_5_long, Sample_ID %in% c("Baby_6_Month_4_Swab"))

# organise x axis how you want
x.order <- c("Baby_6_Month_4_Swab")

# Plot the data as a stacked bar plot.
ggplot(x_other_5_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_6_Month_4_Swab",
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
  filter(Sample_ID %in% c("Baby_7_Month_4_Swab"))

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
speciesPalette <- c(Streptococcus.salivarius = "blue1",
                    Streptococcus.mitis = "red",
                    Cutibacterium.acnes = "purple",
                    Moraxella.osloensis = "cadetblue1",
                    Streptococcus.pneumoniae = "green4",
                    Paracoccus.yeei = "yellow",
                    Pseudomonas.sihuiensis = "black",
                    Bifidobacterium.longum = "darkolivegreen1",
                    Kocuria.rhizophila = "red4",
                    Rothia.mucilaginosa = "sienna4",
                    other = "grey")

x_other_6_long <- subset(x_other_6_long, Sample_ID %in% c("Baby_7_Month_4_Swab"))

# organise x axis how you want
x.order <- c("Baby_7_Month_4_Swab")

# Plot the data as a stacked bar plot.
ggplot(x_other_6_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_7_Month_4_Swab",
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
  filter(Sample_ID %in% c("Baby_8_Month_4_Swab"))

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
speciesPalette <- c(Streptococcus.mitis = "blue1",
                    Gordonia.bronchialis = "red",
                    Streptococcus.pneumoniae = "purple",
                    Cutibacterium.acnes = "cadetblue1",
                    Bifidobacterium.longum = "green4",
                    Streptococcus.parasanguinis = "yellow",
                    Xanthomonas.campestris = "black",
                    Prevotella.melaninogenica = "darkolivegreen1",
                    Staphylococcus.epidermidis = "red4",
                    Moraxella.osloensis = "sienna4",
                    other = "grey")

x_other_7_long <- subset(x_other_7_long, Sample_ID %in% c("Baby_8_Month_4_Swab"))

# organise x axis how you want
x.order <- c("Baby_8_Month_4_Swab")

# Plot the data as a stacked bar plot.
ggplot(x_other_7_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_8_Month_4_Swab",
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
  filter(Sample_ID %in% c("Baby_9_Month_4_Swab"))

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
speciesPalette <- c(Streptococcus.thermophilus = "blue1",
                    Streptococcus.mitis = "red",
                    Fervidobacterium.pennivorans = "purple",
                    Cutibacterium.acnes = "cadetblue1",
                    Rothia.mucilaginosa = "green4",
                    Staphylococcus.epidermidis = "yellow",
                    Veillonella.parvula = "black",
                    Paracoccus.yeei = "darkolivegreen1",
                    Bifidobacterium.longum = "red4",
                    Xanthomonas.campestris = "sienna4",
                    other = "grey")

x_other_8_long <- subset(x_other_8_long, Sample_ID %in% c("Baby_9_Month_4_Swab"))

# organise x axis how you want
x.order <- c("Baby_9_Month_4_Swab")

# Plot the data as a stacked bar plot.
ggplot(x_other_8_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_9_Month_4_Swab",
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
  filter(Sample_ID %in% c("Baby_10_Month_4_Swab"))

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
speciesPalette <- c(Xanthomonas.campestris = "blue1",
                    Bifidobacterium.longum = "red",
                    Cutibacterium.acnes = "purple",
                    Paracoccus.yeei = "cadetblue1",
                    Citrobacter.freundii = "green4",
                    X.Clostridium..bolteae = "yellow",
                    Lactobacillus.rhamnosus = "black",
                    Moraxella.osloensis = "darkolivegreen1",
                    Streptococcus.mitis = "red4",
                    Streptococcus.thermophilus = "sienna4",
                    other = "grey")

x_other_9_long <- subset(x_other_9_long, Sample_ID %in% c("Baby_10_Month_4_Swab"))

# organise x axis how you want
x.order <- c("Baby_10_Month_4_Swab")

# Plot the data as a stacked bar plot.
ggplot(x_other_9_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_10_Month_4_Swab",
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
x_other_10 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_10 <- rownames_to_column(x_other_10, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_10_long <- melt(x_other_10, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_10_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Corynebacterium.striatum = "blue1",
                    Acinetobacter.lwoffii = "red",
                    Micrococcus.luteus = "purple",
                    Cutibacterium.acnes = "cadetblue1",
                    Streptococcus.mitis = "green4",
                    Staphylococcus.epidermidis = "yellow",
                    Streptococcus.pneumoniae = "black",
                    Acinetobacter.johnsonii = "darkolivegreen1",
                    Corynebacterium.diphtheriae = "red4",
                    Corynebacterium.simulans = "sienna4",
                    other = "grey")

x_other_10_long <- subset(x_other_10_long, Sample_ID %in% c("Positive_Control"))

# organise x axis how you want
x.order <- c("Positive_Control")

# Plot the data as a stacked bar plot.
ggplot(x_other_10_long, aes(x = Sample_ID, y = value, fill = Species)) +
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
x_other_11 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_11 <- rownames_to_column(x_other_11, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_11_long <- melt(x_other_11, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_11_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Paracoccus.yeei = "blue1",
                    Streptococcus.mitis = "red",
                    Bifidobacterium.longum = "purple",
                    Streptococcus.thermophilus = "cadetblue1",
                    Xanthomonas.campestris = "green4",
                    Cutibacterium.acnes = "yellow",
                    Corynebacterium.striatum = "black",
                    Acinetobacter.lwoffii = "darkolivegreen1",
                    Streptococcus.salivarius = "red4",
                    Moraxella.osloensis = "sienna4",
                    other = "grey")

x_other_11_long <- subset(x_other_11_long, Sample_ID %in% c("Negative_Control"))

# organise x axis how you want
x.order <- c("Negative_Control")

# Plot the data as a stacked bar plot.
ggplot(x_other_11_long, aes(x = Sample_ID, y = value, fill = Species)) +
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

x_other_12_long <- rbind.data.frame(x_other_long, x_other_1_long, x_other_2_long, x_other_3_long, 
                                    x_other_4_long, x_other_5_long, x_other_6_long, x_other_7_long, 
                                    x_other_8_long, x_other_9_long, x_other_10_long, x_other_11_long)

# Find out all the species to be plotted
unique(x_other_12_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Streptococcus.salivarius = "blue1",
                    Bifidobacterium.longum = "red",
                    Bifidobacterium.breve = "purple",
                    Streptococcus.thermophilus = "cadetblue1",
                    Streptococcus.parasanguinis = "green4",
                    Streptococcus.mitis  = "yellow",
                    Bacteroides.fragilis = "black",
                    Rothia.mucilaginosa = "darkolivegreen1",
                    Cutibacterium.acnes = "red4",
                    Streptococcus.equinus = "sienna4",
                    Acinetobacter.lwoffii = "dimgray",                          
                    Paracoccus.yeei = "blue4",                                      
                    Stenotrophomonas.rhizophila  = "blueviolet",                       
                    Staphylococcus.epidermidis = "plum",
                    Stenotrophomonas.sp..LM091 = "brown4",                              
                    Pseudomonas.putida = "green3",                     
                    Moraxella.osloensis = "cornflowerblue",
                    Xanthomonas.campestris = "chocolate",             
                    Staphylococcus.aureus = "chocolate1",           
                    Staphylococcus.hominis = "darkmagenta",                
                    Fervidobacterium.pennivorans = "khaki4",           
                    Streptococcus.pneumoniae ="cyan4", 
                    Micrococcus.luteus = "cyan",
                    Enterobacter.cloacae = "deepskyblue",
                    Bifidobacterium.bifidum = "deeppink",
                    Kocuria.rhizophila = "deeppink3",
                    Pseudomonas.sihuiensis = "darkolivegreen3",
                    Gordonia.bronchialis = "darkred",
                    Prevotella.melaninogenica = "palegreen",
                    Veillonella.parvula = "#ffc425",
                    Citrobacter.freundii = "#f37735",
                    X.Clostridium..bolteae = "wheat",
                    Lactobacillus.rhamnosus = "#d11141",
                    Corynebacterium.striatum = "yellow3",
                    Acinetobacter.johnsonii = "tan",
                    Corynebacterium.diphtheriae = "salmon",
                    Corynebacterium.simulans = "#E76BF3",
                    other = "grey")


# Order x axis labels

x.order <- c("Baby_1_Month_4_Swab", "Baby_2_Month_4_Swab", "Baby_3_Month_4_Swab", "Baby_5_Twin_1_Month_4_Swab", 
             "Baby_5_Twin_2_Month_4_Swab", "Baby_6_Month_4_Swab","Baby_7_Month_4_Swab", "Baby_8_Month_4_Swab", 
             "Baby_9_Month_4_Swab","Baby_10_Month_4_Swab", "Positive_Control", "Negative_Control")

# Plot the individual plots into one plot

ggplot(x_other_12_long, aes(x = Sample_ID, y = value, fill = Species)) +
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
