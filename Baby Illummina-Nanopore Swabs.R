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
setwd("C:/Users/serghioi/Documents/QIB/PhD - Development and Evolution Of The Infant Skin Microbiome/Data Collection/DNA Extrac. Method Development/Data Plots/Promega Maxwell DNA Extraction PEARL Baby Swabs Run 6/Illumina Swab vs Nanopore Swab")

# Import the csv file.
Baby_1_Month_4_Swab_Illumina <- read_csv("0861-E001-Brack.csv")
# Select only the "name" and "fraction_total_reads" columns.
Baby_1_Month_4_Swab_Illumina <- Baby_1_Month_4_Swab_Illumina %>% select(name, fraction_total_reads)
# Rename the "fraction_total_reads" column as the sample Id name.
names(Baby_1_Month_4_Swab_Illumina)[names(Baby_1_Month_4_Swab_Illumina) == "fraction_total_reads"] <- "Baby_1_Month_4_Swab_Illumina"

# Repeat with the other csv files.
Baby_2_Month_4_Swab_Illumina <- read_csv("0861-E002-Brack.csv")
Baby_2_Month_4_Swab_Illumina <- Baby_2_Month_4_Swab_Illumina %>% select(name, fraction_total_reads)
names(Baby_2_Month_4_Swab_Illumina)[names(Baby_2_Month_4_Swab_Illumina) == "fraction_total_reads"] <- "Baby_2_Month_4_Swab_Illumina"

Baby_3_Month_4_Swab_Illumina <- read_csv("0861-E003-Brack.csv")
Baby_3_Month_4_Swab_Illumina <- Baby_3_Month_4_Swab_Illumina %>% select(name, fraction_total_reads)
names(Baby_3_Month_4_Swab_Illumina)[names(Baby_3_Month_4_Swab_Illumina) == "fraction_total_reads"] <- "Baby_3_Month_4_Swab_Illumina"

Baby_5_Twin_1_Month_4_Swab_Illumina <- read_csv("0861-E005-1-Brack.csv")
Baby_5_Twin_1_Month_4_Swab_Illumina <- Baby_5_Twin_1_Month_4_Swab_Illumina %>% select(name, fraction_total_reads)
names(Baby_5_Twin_1_Month_4_Swab_Illumina)[names(Baby_5_Twin_1_Month_4_Swab_Illumina) == "fraction_total_reads"] <- "Baby_5_Twin_1_Month_4_Swab_Illumina"

Baby_5_Twin_2_Month_4_Swab_Illumina <- read_csv("0861-E005-2-Brack.csv")
Baby_5_Twin_2_Month_4_Swab_Illumina <- Baby_5_Twin_2_Month_4_Swab_Illumina %>% select(name, fraction_total_reads)
names(Baby_5_Twin_2_Month_4_Swab_Illumina)[names(Baby_5_Twin_2_Month_4_Swab_Illumina) == "fraction_total_reads"] <- "Baby_5_Twin_2_Month_4_Swab_Illumina"

Baby_6_Month_4_Swab_Illumina <- read_csv("0861-E006-Brack.csv") 
Baby_6_Month_4_Swab_Illumina <- Baby_6_Month_4_Swab_Illumina %>% select(name, fraction_total_reads)
names(Baby_6_Month_4_Swab_Illumina)[names(Baby_6_Month_4_Swab_Illumina) == "fraction_total_reads"] <- "Baby_6_Month_4_Swab_Illumina"

Baby_7_Month_4_Swab_Illumina <- read_csv("0861-E007-Brack.csv") 
Baby_7_Month_4_Swab_Illumina <- Baby_7_Month_4_Swab_Illumina %>% select(name, fraction_total_reads)
names(Baby_7_Month_4_Swab_Illumina)[names(Baby_7_Month_4_Swab_Illumina) == "fraction_total_reads"] <- "Baby_7_Month_4_Swab_Illumina"

Baby_8_Month_4_Swab_Illumina <- read_csv("0861-E008-Brack.csv") 
Baby_8_Month_4_Swab_Illumina <- Baby_8_Month_4_Swab_Illumina %>% select(name, fraction_total_reads)
names(Baby_8_Month_4_Swab_Illumina)[names(Baby_8_Month_4_Swab_Illumina) == "fraction_total_reads"] <- "Baby_8_Month_4_Swab_Illumina"

Baby_9_Month_4_Swab_Illumina <- read_csv("0861-E009-Brack.csv") 
Baby_9_Month_4_Swab_Illumina <- Baby_9_Month_4_Swab_Illumina %>% select(name, fraction_total_reads)
names(Baby_9_Month_4_Swab_Illumina)[names(Baby_9_Month_4_Swab_Illumina) == "fraction_total_reads"] <- "Baby_9_Month_4_Swab_Illumina"

Baby_10_Month_4_Swab_Illumina <- read_csv("0861-E010-Brack.csv") 
Baby_10_Month_4_Swab_Illumina <- Baby_10_Month_4_Swab_Illumina %>% select(name, fraction_total_reads)
names(Baby_10_Month_4_Swab_Illumina)[names(Baby_10_Month_4_Swab_Illumina) == "fraction_total_reads"] <- "Baby_10_Month_4_Swab_Illumina"

Negative_Control_Illumina <- read_csv("0861-Neg-Brack.csv")
Negative_Control_Illumina <- Negative_Control_Illumina %>% select(name, fraction_total_reads)
names(Negative_Control_Illumina)[names(Negative_Control_Illumina) == "fraction_total_reads"] <- "Negative_Control_Illumina"

Positive_Control_Illumina <- read_csv("0861-Pos-Brack.csv")
Positive_Control_Illumina <- Positive_Control_Illumina %>% select(name, fraction_total_reads)
names(Positive_Control_Illumina)[names(Positive_Control_Illumina) == "fraction_total_reads"] <- "Positive_Control_Illumina"

Baby_1_Month_4_Swab_Nanopore <- read_csv("0862-E001-Brack.csv")
Baby_1_Month_4_Swab_Nanopore <- Baby_1_Month_4_Swab_Nanopore %>% select(name, fraction_total_reads)
names(Baby_1_Month_4_Swab_Nanopore)[names(Baby_1_Month_4_Swab_Nanopore) == "fraction_total_reads"] <- "Baby_1_Month_4_Swab_Nanopore"

Baby_2_Month_4_Swab_Nanopore <- read_csv("0862-E002-Brack.csv")
Baby_2_Month_4_Swab_Nanopore <- Baby_2_Month_4_Swab_Nanopore %>% select(name, fraction_total_reads)
names(Baby_2_Month_4_Swab_Nanopore)[names(Baby_2_Month_4_Swab_Nanopore) == "fraction_total_reads"] <- "Baby_2_Month_4_Swab_Nanopore"

Baby_3_Month_4_Swab_Nanopore <- read_csv("0862-E003-Brack.csv")
Baby_3_Month_4_Swab_Nanopore <- Baby_3_Month_4_Swab_Nanopore %>% select(name, fraction_total_reads)
names(Baby_3_Month_4_Swab_Nanopore)[names(Baby_3_Month_4_Swab_Nanopore) == "fraction_total_reads"] <- "Baby_3_Month_4_Swab_Nanopore"

Baby_5_Twin_1_Month_4_Swab_Nanopore <- read_csv("0862-E005-1-Brack.csv")
Baby_5_Twin_1_Month_4_Swab_Nanopore <- Baby_5_Twin_1_Month_4_Swab_Nanopore %>% select(name, fraction_total_reads)
names(Baby_5_Twin_1_Month_4_Swab_Nanopore)[names(Baby_5_Twin_1_Month_4_Swab_Nanopore) == "fraction_total_reads"] <- "Baby_5_Twin_1_Month_4_Swab_Nanopore"

Baby_5_Twin_2_Month_4_Swab_Nanopore <- read_csv("0862-E005-2-Brack.csv")
Baby_5_Twin_2_Month_4_Swab_Nanopore <- Baby_5_Twin_2_Month_4_Swab_Nanopore %>% select(name, fraction_total_reads)
names(Baby_5_Twin_2_Month_4_Swab_Nanopore)[names(Baby_5_Twin_2_Month_4_Swab_Nanopore) == "fraction_total_reads"] <- "Baby_5_Twin_2_Month_4_Swab_Nanopore"

Baby_6_Month_4_Swab_Nanopore <- read_csv("0862-E006-Brack.csv") 
Baby_6_Month_4_Swab_Nanopore <- Baby_6_Month_4_Swab_Nanopore %>% select(name, fraction_total_reads)
names(Baby_6_Month_4_Swab_Nanopore)[names(Baby_6_Month_4_Swab_Nanopore) == "fraction_total_reads"] <- "Baby_6_Month_4_Swab_Nanopore"

Baby_7_Month_4_Swab_Nanopore <- read_csv("0862-E007-Brack.csv") 
Baby_7_Month_4_Swab_Nanopore <- Baby_7_Month_4_Swab_Nanopore %>% select(name, fraction_total_reads)
names(Baby_7_Month_4_Swab_Nanopore)[names(Baby_7_Month_4_Swab_Nanopore) == "fraction_total_reads"] <- "Baby_7_Month_4_Swab_Nanopore"

Baby_8_Month_4_Swab_Nanopore <- read_csv("0862-E008-Brack.csv") 
Baby_8_Month_4_Swab_Nanopore <- Baby_8_Month_4_Swab_Nanopore %>% select(name, fraction_total_reads)
names(Baby_8_Month_4_Swab_Nanopore)[names(Baby_8_Month_4_Swab_Nanopore) == "fraction_total_reads"] <- "Baby_8_Month_4_Swab_Nanopore"

Baby_9_Month_4_Swab_Nanopore <- read_csv("0862-E009-Brack.csv") 
Baby_9_Month_4_Swab_Nanopore <- Baby_9_Month_4_Swab_Nanopore %>% select(name, fraction_total_reads)
names(Baby_9_Month_4_Swab_Nanopore)[names(Baby_9_Month_4_Swab_Nanopore) == "fraction_total_reads"] <- "Baby_9_Month_4_Swab_Nanopore"

Baby_10_Month_4_Swab_Nanopore <- read_csv("0862-E010-Brack.csv") 
Baby_10_Month_4_Swab_Nanopore <- Baby_10_Month_4_Swab_Nanopore %>% select(name, fraction_total_reads)
names(Baby_10_Month_4_Swab_Nanopore)[names(Baby_10_Month_4_Swab_Nanopore) == "fraction_total_reads"] <- "Baby_10_Month_4_Swab_Nanopore"

Negative_Control_Nanopore <- read_csv("0862-Neg-Brack.csv")
Negative_Control_Nanopore <- Negative_Control_Nanopore %>% select(name, fraction_total_reads)
names(Negative_Control_Nanopore)[names(Negative_Control_Nanopore) == "fraction_total_reads"] <- "Negative_Control_Nanopore"

Positive_Control_Nanopore <- read_csv("0862-Pos-Brack.csv")
Positive_Control_Nanopore <- Positive_Control_Nanopore %>% select(name, fraction_total_reads)
names(Positive_Control_Nanopore)[names(Positive_Control_Nanopore) == "fraction_total_reads"] <- "Positive_Control_Nanopore"


# R can only merge two files each time.
# Merge the files together using the species "name" column.

merged_final <- Baby_1_Month_4_Swab_Illumina %>%
  full_join(Baby_2_Month_4_Swab_Illumina, by='name') %>%
  full_join(Baby_3_Month_4_Swab_Illumina, by='name') %>%
  full_join(Baby_5_Twin_1_Month_4_Swab_Illumina, by='name') %>%
  full_join(Baby_5_Twin_2_Month_4_Swab_Illumina, by='name') %>%
  full_join(Baby_6_Month_4_Swab_Illumina, by='name') %>%
  full_join(Baby_7_Month_4_Swab_Illumina, by='name') %>%
  full_join(Baby_8_Month_4_Swab_Illumina, by='name') %>%
  full_join(Baby_9_Month_4_Swab_Illumina, by='name') %>%
  full_join(Baby_10_Month_4_Swab_Illumina, by='name') %>%
  full_join(Negative_Control_Illumina, by='name') %>%
  full_join(Positive_Control_Illumina, by='name') %>%
  full_join(Baby_1_Month_4_Swab_Nanopore, by='name') %>%
  full_join(Baby_2_Month_4_Swab_Nanopore, by='name') %>%
  full_join(Baby_3_Month_4_Swab_Nanopore, by='name') %>%
  full_join(Baby_5_Twin_1_Month_4_Swab_Nanopore, by='name') %>%
  full_join(Baby_5_Twin_2_Month_4_Swab_Nanopore, by='name') %>%
  full_join(Baby_6_Month_4_Swab_Nanopore, by='name') %>%
  full_join(Baby_7_Month_4_Swab_Nanopore, by='name') %>%
  full_join(Baby_8_Month_4_Swab_Nanopore, by='name') %>%
  full_join(Baby_9_Month_4_Swab_Nanopore, by='name') %>%
  full_join(Baby_10_Month_4_Swab_Nanopore, by='name') %>%
  full_join(Negative_Control_Nanopore, by='name') %>%
  full_join(Positive_Control_Nanopore, by='name')

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
  filter(Sample_ID %in% c("Baby_1_Month_4_Swab_Illumina"))

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
                    Streptococcus.mitis = "red",
                    Streptococcus.parasanguinis = "purple",
                    Streptococcus.thermophilus = "cadetblue1",
                    Streptococcus.pneumoniae = "green4",
                    Prevotella.melaninogenica = "yellow",
                    Bacteroides.fragilis = "black",
                    Bifidobacterium.breve = "darkolivegreen1",
                    Bifidobacterium.longum = "red4",
                    Veillonella.parvula = "sienna4",
                    other = "grey")

x_other_long <- subset(x_other_long, Sample_ID %in% c("Baby_1_Month_4_Swab_Illumina"))

# organise x axis how you want
x.order <- c("Baby_1_Month_4_Swab_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_1_Month_4_Swab_Illumina",
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
  filter(Sample_ID %in% c("Baby_2_Month_4_Swab_Illumina"))

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
                    Staphylococcus.epidermidis = "red",
                    Bifidobacterium.longum = "purple",
                    Moraxella.osloensis = "cadetblue1",
                    Cutibacterium.acnes = "green4",
                    Bacteroides.fragilis = "yellow",
                    Salmonella.enterica = "black",
                    Streptococcus.pneumoniae = "darkolivegreen1",
                    Stenotrophomonas.rhizophila = "red4",
                    Streptococcus.mitis = "sienna4",
                    other = "grey")

x_other_1_long <- subset(x_other_1_long, Sample_ID %in% c("Baby_2_Month_4_Swab_Illumina"))

# organise x axis how you want
x.order <- c("Baby_2_Month_4_Swab_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_1_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_2_Month_4_Swab_Illumina",
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
  filter(Sample_ID %in% c("Baby_3_Month_4_Swab_Illumina"))

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
speciesPalette <- c(Corynebacterium.striatum = "blue1",
                    Acinetobacter.lwoffii = "red",
                    Staphylococcus.epidermidis = "purple",
                    Streptococcus.mitis = "cadetblue1",
                    Staphylococcus.hominis = "green4",
                    Streptococcus.pneumoniae = "yellow",
                    Moraxella.osloensis = "black",
                    Cutibacterium.acnes = "darkolivegreen1",
                    Staphylococcus.aureus = "red4",
                    Xanthomonas.campestris = "sienna4",
                    other = "grey")

x_other_2_long <- subset(x_other_2_long, Sample_ID %in% c("Baby_3_Month_4_Swab_Illumina"))

# organise x axis how you want
x.order <- c("Baby_3_Month_4_Swab_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_2_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_3_Month_4_Swab_Illumina",
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
  filter(Sample_ID %in% c("Baby_5_Twin_1_Month_4_Swab_Illumina"))

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
speciesPalette <- c(Streptococcus.pneumoniae = "blue1",
                    Streptococcus.mitis = "red",
                    Moraxella.osloensis = "purple",
                    Fervidobacterium.pennivorans = "cadetblue1",
                    Cutibacterium.acnes = "green4",
                    Streptococcus.thermophilus = "yellow",
                    Staphylococcus.epidermidis = "black",
                    Streptococcus.parasanguinis = "darkolivegreen1",
                    Streptococcus.salivarius = "red4",
                    Staphylococcus.hominis = "sienna4",
                    other = "grey")

x_other_3_long <- subset(x_other_3_long, Sample_ID %in% c("Baby_5_Twin_1_Month_4_Swab_Illumina"))

# organise x axis how you want
x.order <- c("Baby_5_Twin_1_Month_4_Swab_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_3_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_5_Twin_1_Month_4_Swab_Illumina",
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
  filter(Sample_ID %in% c("Baby_5_Twin_2_Month_4_Swab_Illumina"))

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
                    Paracoccus.yeei = "cadetblue1",
                    Streptococcus.thermophilus = "green4",
                    Cutibacterium.acnes = "yellow",
                    Fervidobacterium.pennivorans = "black",
                    Streptococcus.salivarius = "darkolivegreen1",
                    Streptococcus.parasanguinis = "red4",
                    Staphylococcus.epidermidis = "sienna4",
                    other = "grey")

x_other_4_long <- subset(x_other_4_long, Sample_ID %in% c("Baby_5_Twin_2_Month_4_Swab_Illumina"))

# organise x axis how you want
x.order <- c("Baby_5_Twin_2_Month_4_Swab_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_4_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_5_Twin_2_Month_4_Swab_Illumina",
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
  filter(Sample_ID %in% c("Baby_6_Month_4_Swab_Illumina"))

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
speciesPalette <- c(Acinetobacter.lwoffii = "blue1",
                    Moraxella.osloensis = "red",
                    Cutibacterium.acnes = "purple",
                    Streptococcus.pneumoniae = "cadetblue1",
                    Micrococcus.luteus = "green4",
                    Streptococcus.mitis = "yellow",
                    Bifidobacterium.longum = "black",
                    Streptococcus.salivarius = "darkolivegreen1",
                    Bifidobacterium.bifidum = "red4",
                    Enterobacter.hormaechei = "sienna4",
                    other = "grey")

x_other_5_long <- subset(x_other_5_long, Sample_ID %in% c("Baby_6_Month_4_Swab_Illumina"))

# organise x axis how you want
x.order <- c("Baby_6_Month_4_Swab_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_5_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_6_Month_4_Swab_Illumina",
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
  filter(Sample_ID %in% c("Baby_7_Month_4_Swab_Illumina"))

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
speciesPalette <- c(Streptococcus.mitis = "blue1",
                    Streptococcus.pneumoniae = "red",
                    Cutibacterium.acnes = "purple",
                    Streptococcus.salivarius = "cadetblue1",
                    Moraxella.osloensis = "green4",
                    Salmonella.enterica = "yellow",
                    Staphylococcus.epidermidis = "black",
                    Rothia.mucilaginosa = "darkolivegreen1",
                    Streptococcus.parasanguinis = "red4",
                    Acinetobacter.lwoffii = "sienna4",
                    other = "grey")

x_other_6_long <- subset(x_other_6_long, Sample_ID %in% c("Baby_7_Month_4_Swab_Illumina"))

# organise x axis how you want
x.order <- c("Baby_7_Month_4_Swab_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_6_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_7_Month_4_Swab_Illumina",
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
  filter(Sample_ID %in% c("Baby_8_Month_4_Swab_Illumina"))

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
                    Streptococcus.pneumoniae = "red",
                    Gordonia.bronchialis = "purple",
                    Cutibacterium.acnes = "cadetblue1",
                    Staphylococcus.epidermidis = "green4",
                    Streptococcus.pseudopneumoniae = "yellow",
                    Fusobacterium.periodonticum = "black",
                    Prevotella.melaninogenica = "darkolivegreen1",
                    Moraxella.osloensis = "red4",
                    Streptococcus.parasanguinis = "sienna4",
                    other = "grey")

x_other_7_long <- subset(x_other_7_long, Sample_ID %in% c("Baby_8_Month_4_Swab_Illumina"))

# organise x axis how you want
x.order <- c("Baby_8_Month_4_Swab_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_7_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_8_Month_4_Swab_Illumina",
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
  filter(Sample_ID %in% c("Baby_9_Month_4_Swab_Illumina"))

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
speciesPalette <- c(Streptococcus.mitis = "blue1",
                    Corynebacterium.striatum = "red",
                    Streptococcus.pneumoniae = "purple",
                    Streptococcus.thermophilus = "cadetblue1",
                    Staphylococcus.epidermidis = "green4",
                    Fervidobacterium.pennivorans = "yellow",
                    Cutibacterium.acnes = "black",
                    Streptococcus.salivarius = "darkolivegreen1",
                    Streptococcus.parasanguinis = "red4",
                    Staphylococcus.hominis = "sienna4",
                    other = "grey")

x_other_8_long <- subset(x_other_8_long, Sample_ID %in% c("Baby_9_Month_4_Swab_Illumina"))

# organise x axis how you want
x.order <- c("Baby_9_Month_4_Swab_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_8_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_9_Month_4_Swab_Illumina",
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
  filter(Sample_ID %in% c("Baby_10_Month_4_Swab_Illumina"))

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
                    Corynebacterium.striatum = "red",
                    Bifidobacterium.longum = "purple",
                    Cutibacterium.acnes = "cadetblue1",
                    Staphylococcus.epidermidis = "green4",
                    Streptococcus.mitis = "yellow",
                    Salmonella.enterica = "black",
                    Streptococcus.pneumoniae = "darkolivegreen1",
                    X.Clostridium..bolteae = "red4",
                    Paracoccus.yeei = "sienna4",
                    other = "grey")

x_other_9_long <- subset(x_other_9_long, Sample_ID %in% c("Baby_10_Month_4_Swab_Illumina"))

# organise x axis how you want
x.order <- c("Baby_10_Month_4_Swab_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_9_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_10_Month_4_Swab_Illumina",
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
x_other_10 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_10 <- rownames_to_column(x_other_10, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_10_long <- melt(x_other_10, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_10_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Corynebacterium.striatum = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Streptococcus.mitis = "purple",
                    Streptococcus.pneumoniae = "cadetblue1",
                    Acinetobacter.lwoffii = "green4",
                    Micrococcus.luteus = "yellow",
                    Cutibacterium.acnes = "black",
                    Acinetobacter.johnsonii = "darkolivegreen1",
                    Streptococcus.pseudopneumoniae = "red4",
                    Acinetobacter.junii = "sienna4",
                    other = "grey")

x_other_10_long <- subset(x_other_10_long, Sample_ID %in% c("Positive_Control_Illumina"))

# organise x axis how you want
x.order <- c("Positive_Control_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_10_long, aes(x = Sample_ID, y = value, fill = Species)) +
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
x_other_11 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_11 <- rownames_to_column(x_other_11, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_11_long <- melt(x_other_11, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_11_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Corynebacterium.striatum = "blue1",
                    Staphylococcus.epidermidis = "red",
                    Streptococcus.mitis = "purple",
                    Salmonella.enterica = "cadetblue1",
                    Acinetobacter.lwoffii = "green4",
                    Streptococcus.pneumoniae = "yellow",
                    Paracoccus.yeei = "black",
                    Micrococcus.luteus = "darkolivegreen1",
                    Acinetobacter.johnsonii = "red4",
                    Cutibacterium.acnes = "sienna4",
                    other = "grey")

x_other_11_long <- subset(x_other_11_long, Sample_ID %in% c("Negative_Control_Illumina"))

# organise x axis how you want
x.order <- c("Negative_Control_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_11_long, aes(x = Sample_ID, y = value, fill = Species)) +
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
  filter(Sample_ID %in% c("Baby_1_Month_4_Swab_Nanopore"))

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

x_other_12_long <- subset(x_other_12_long, Sample_ID %in% c("Baby_1_Month_4_Swab_Nanopore"))

# organise x axis how you want
x.order <- c("Baby_1_Month_4_Swab_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_12_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_1_Month_4_Swab_Nanopore",
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
  filter(Sample_ID %in% c("Baby_2_Month_4_Swab_Nanopore"))

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

x_other_13_long <- subset(x_other_13_long, Sample_ID %in% c("Baby_2_Month_4_Swab_Nanopore"))

# organise x axis how you want
x.order <- c("Baby_2_Month_4_Swab_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_13_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_2_Month_4_Swab_Nanopore",
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
  filter(Sample_ID %in% c("Baby_3_Month_4_Swab_Nanopore"))

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

x_other_14_long <- subset(x_other_14_long, Sample_ID %in% c("Baby_3_Month_4_Swab_Nanopore"))

# organise x axis how you want
x.order <- c("Baby_3_Month_4_Swab_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_14_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_3_Month_4_Swab_Nanopore",
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
  filter(Sample_ID %in% c("Baby_5_Twin_1_Month_4_Swab_Nanopore"))

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
speciesPalette <- c(Streptococcus.mitis = "blue1",
                    Streptococcus.thermophilus = "red",
                    Cutibacterium.acnes = "purple",
                    Streptococcus.parasanguinis = "cadetblue1",
                    Moraxella.osloensis = "green4",
                    Fervidobacterium.pennivorans = "yellow",
                    Paracoccus.yeei = "black",
                    Pseudomonas.putida = "darkolivegreen1",
                    Rothia.mucilaginosa = "red4",
                    Corynebacterium.striatum = "sienna4",
                    other = "grey")

x_other_15_long <- subset(x_other_15_long, Sample_ID %in% c("Baby_5_Twin_1_Month_4_Swab_Nanopore"))

# organise x axis how you want
x.order <- c("Baby_5_Twin_1_Month_4_Swab_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_15_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_5_Twin_1_Month_4_Swab_Nanopore",
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
  filter(Sample_ID %in% c("Baby_5_Twin_2_Month_4_Swab_Nanopore"))

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

x_other_16_long <- subset(x_other_16_long, Sample_ID %in% c("Baby_5_Twin_2_Month_4_Swab_Nanopore"))

# organise x axis how you want
x.order <- c("Baby_5_Twin_2_Month_4_Swab_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_16_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_5_Twin_2_Month_4_Swab_Nanopore",
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
  filter(Sample_ID %in% c("Baby_6_Month_4_Swab_Nanopore"))

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

x_other_17_long <- subset(x_other_17_long, Sample_ID %in% c("Baby_6_Month_4_Swab_Nanopore"))

# organise x axis how you want
x.order <- c("Baby_6_Month_4_Swab_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_17_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_6_Month_4_Swab_Nanopore",
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
  filter(Sample_ID %in% c("Baby_7_Month_4_Swab_Nanopore"))

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

x_other_18_long <- subset(x_other_18_long, Sample_ID %in% c("Baby_7_Month_4_Swab_Nanopore"))

# organise x axis how you want
x.order <- c("Baby_7_Month_4_Swab_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_18_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_7_Month_4_Swab_Nanopore",
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
  filter(Sample_ID %in% c("Baby_8_Month_4_Swab_Nanopore"))

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

x_other_19_long <- subset(x_other_19_long, Sample_ID %in% c("Baby_8_Month_4_Swab_Nanopore"))

# organise x axis how you want
x.order <- c("Baby_8_Month_4_Swab_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_19_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_8_Month_4_Swab_Nanopore",
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
  filter(Sample_ID %in% c("Baby_9_Month_4_Swab_Nanopore"))

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
speciesPalette <- c(Streptococcus.thermophilus = "blue1",
                    Streptococcus.mitis = "red",
                    Fervidobacterium.pennivorans = "purple",
                    Cutibacterium.acnes = "cadetblue1",
                    Rothia.mucilaginosa = "green4",
                    Staphylococcus.epidermidis = "yellow",
                    Veillonella.parvula = "black",
                    Corynebacterium.striatum = "darkolivegreen1",
                    Streptococcus.pneumoniae = "red4",
                    Paracoccus.yeei = "sienna4",
                    other = "grey")

x_other_20_long <- subset(x_other_20_long, Sample_ID %in% c("Baby_9_Month_4_Swab_Nanopore"))

# organise x axis how you want
x.order <- c("Baby_9_Month_4_Swab_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_20_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_9_Month_4_Swab_Nanopore",
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
  filter(Sample_ID %in% c("Baby_10_Month_4_Swab_Nanopore"))

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
speciesPalette <- c(Xanthomonas.campestris = "blue1",
                    Bifidobacterium.longum = "red",
                    Cutibacterium.acnes = "purple",
                    Paracoccus.yeei = "cadetblue1",
                    Citrobacter.freundii = "green4",
                    X.Clostridium..bolteae = "yellow",
                    Lactobacillus.rhamnosus = "black",
                    Moraxella.osloensis = "darkolivegreen1",
                    Streptococcus.mitis = "red4",
                    Corynebacterium.striatum = "sienna4",
                    other = "grey")

x_other_21_long <- subset(x_other_21_long, Sample_ID %in% c("Baby_10_Month_4_Swab_Nanopore"))

# organise x axis how you want
x.order <- c("Baby_10_Month_4_Swab_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_21_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_10_Month_4_Swab_Nanopore",
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
x_other_22 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_22 <- rownames_to_column(x_other_22, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_22_long <- melt(x_other_22, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_22_long$Species)

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

x_other_22_long <- subset(x_other_22_long, Sample_ID %in% c("Positive_Control_Nanopore"))

# organise x axis how you want
x.order <- c("Positive_Control_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_22_long, aes(x = Sample_ID, y = value, fill = Species)) +
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
x_other_23 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_23 <- rownames_to_column(x_other_23, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_23_long <- melt(x_other_23, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_23_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Paracoccus.yeei = "blue1",
                    Streptococcus.mitis = "red",
                    Corynebacterium.striatum = "purple",
                    Streptococcus.pneumoniae = "cadetblue1",
                    Acinetobacter.lwoffii = "green4",
                    Cutibacterium.acnes = "yellow",
                    Moraxella.osloensis = "black",
                    Bifidobacterium.longum = "darkolivegreen1",
                    Xanthomonas.campestris = "red4",
                    Streptococcus.salivarius = "sienna4",
                    other = "grey")

x_other_23_long <- subset(x_other_23_long, Sample_ID %in% c("Negative_Control_Nanopore"))

# organise x axis how you want
x.order <- c("Negative_Control_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_23_long, aes(x = Sample_ID, y = value, fill = Species)) +
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

x_other_24_long <- rbind.data.frame(x_other_long, x_other_1_long, x_other_2_long, x_other_3_long, 
                                    x_other_4_long, x_other_5_long, x_other_6_long, x_other_7_long, 
                                    x_other_8_long, x_other_9_long, x_other_10_long, x_other_11_long,
                                    x_other_12_long, x_other_13_long, x_other_14_long, x_other_15_long,
                                    x_other_16_long, x_other_17_long, x_other_18_long, x_other_19_long,
                                    x_other_20_long, x_other_21_long, x_other_22_long, x_other_23_long)

# Find out all the species to be plotted
unique(x_other_24_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Streptococcus.salivarius = "blue1",
                    Streptococcus.mitis = "red",
                    Streptococcus.parasanguinis = "purple",
                    Streptococcus.thermophilus = "cadetblue1",
                    Streptococcus.pneumoniae = "green4",
                    Prevotella.melaninogenica  = "yellow",
                    Bacteroides.fragilis = "black",
                    Bifidobacterium.breve = "darkolivegreen1",
                    Bifidobacterium.longum = "red4",
                    Veillonella.parvula = "sienna4",
                    Acinetobacter.lwoffii = "dimgray",                          
                    Staphylococcus.epidermidis = "blue4",                                      
                    Moraxella.osloensis  = "blueviolet",                       
                    Cutibacterium.acnes = "plum",
                    Salmonella.enterica = "brown4",                              
                    Stenotrophomonas.rhizophila = "green3",                     
                    Corynebacterium.striatum = "cornflowerblue",
                    Staphylococcus.hominis = "chocolate",             
                    Staphylococcus.aureus = "chocolate1",           
                    Xanthomonas.campestris = "darkmagenta",                
                    Fervidobacterium.pennivorans = "khaki4",           
                    Paracoccus.yeei ="cyan4", 
                    Micrococcus.luteus = "cyan",
                    Bifidobacterium.bifidum = "deepskyblue",
                    Enterobacter.hormaechei = "deeppink",
                    Rothia.mucilaginosa = "deeppink3",
                    Gordonia.bronchialis = "darkolivegreen3",
                    Streptococcus.pseudopneumoniae = "darkred",
                    Fusobacterium.periodonticum = "palegreen",
                    X.Clostridium..bolteae = "#ffc425",
                    Acinetobacter.johnsonii = "#f37735",
                    Acinetobacter.junii = "wheat",
                    Streptococcus.equinus = "#d11141",
                    Stenotrophomonas.sp..LM091 = "yellow3",
                    Pseudomonas.putida = "tan",
                    Enterobacter.cloacae = "salmon",
                    Kocuria.rhizophila = "#E76BF3",
                    Pseudomonas.sihuiensis = "#529EFF",
                    Citrobacter.freundii = "khaki",               
                    Lactobacillus.rhamnosus = "#00C08D",         
                    Corynebacterium.diphtheriae = "#00b159",
                    Corynebacterium.simulans = "#72B000",                 
                    other = "grey")


# Order x axis labels

x.order <- c("Baby_1_Month_4_Swab_Illumina", "Baby_1_Month_4_Swab_Nanopore", 
             "Baby_2_Month_4_Swab_Illumina", "Baby_2_Month_4_Swab_Nanopore",
             "Baby_3_Month_4_Swab_Illumina", "Baby_3_Month_4_Swab_Nanopore",
             "Baby_5_Twin_1_Month_4_Swab_Illumina", "Baby_5_Twin_1_Month_4_Swab_Nanopore",
             "Baby_5_Twin_2_Month_4_Swab_Illumina", "Baby_5_Twin_2_Month_4_Swab_Nanopore",
             "Baby_6_Month_4_Swab_Illumina", "Baby_6_Month_4_Swab_Nanopore",
             "Baby_7_Month_4_Swab_Illumina", "Baby_7_Month_4_Swab_Nanopore",
             "Baby_8_Month_4_Swab_Illumina", "Baby_8_Month_4_Swab_Nanopore",
             "Baby_9_Month_4_Swab_Illumina", "Baby_9_Month_4_Swab_Nanopore",
             "Baby_10_Month_4_Swab_Illumina", "Baby_10_Month_4_Swab_Nanopore",
             "Positive_Control_Illumina", "Positive_Control_Nanopore", 
             "Negative_Control_Illumina", "Negative_Control_Nanopore")

# Plot the individual plots into one plot

ggplot(x_other_24_long, aes(x = Sample_ID, y = value, fill = Species)) +
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
