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
setwd("C:/Users/serghioi/Documents/QIB/PhD - Development and Evolution Of The Infant Skin Microbiome/Data Collection/DNA Extrac. Method Development/Data Plots/Promega Maxwell DNA Extraction PEARL Baby Swabs Run 6/Illumina vs Nanopore Cult")

# Import the csv file.
Baby_1_Month_4_Swab_Culture_Illumina <- read_csv("0861-E001.csv")
# Select only the "name" and "fraction_total_reads" columns.
Baby_1_Month_4_Swab_Culture_Illumina <- Baby_1_Month_4_Swab_Culture_Illumina %>% select(name, fraction_total_reads)
# Rename the "fraction_total_reads" column as the sample Id name.
names(Baby_1_Month_4_Swab_Culture_Illumina)[names(Baby_1_Month_4_Swab_Culture_Illumina) == "fraction_total_reads"] <- "Baby_1_Month_4_Swab_Culture_Illumina"

# Repeat with the other csv files.
Baby_2_Month_4_Swab_Culture_Illumina <- read_csv("0861-E002.csv")
Baby_2_Month_4_Swab_Culture_Illumina <- Baby_2_Month_4_Swab_Culture_Illumina %>% select(name, fraction_total_reads)
names(Baby_2_Month_4_Swab_Culture_Illumina)[names(Baby_2_Month_4_Swab_Culture_Illumina) == "fraction_total_reads"] <- "Baby_2_Month_4_Swab_Culture_Illumina"

Baby_5_Twin_1_Month_4_Swab_Culture_Illumina <- read_csv("0861-E005-1.csv")
Baby_5_Twin_1_Month_4_Swab_Culture_Illumina <- Baby_5_Twin_1_Month_4_Swab_Culture_Illumina %>% select(name, fraction_total_reads)
names(Baby_5_Twin_1_Month_4_Swab_Culture_Illumina)[names(Baby_5_Twin_1_Month_4_Swab_Culture_Illumina) == "fraction_total_reads"] <- "Baby_5_Twin_1_Month_4_Swab_Culture_Illumina"

Baby_6_Month_4_Swab_Culture_Illumina <- read_csv("0861-E006.csv") 
Baby_6_Month_4_Swab_Culture_Illumina <- Baby_6_Month_4_Swab_Culture_Illumina %>% select(name, fraction_total_reads)
names(Baby_6_Month_4_Swab_Culture_Illumina)[names(Baby_6_Month_4_Swab_Culture_Illumina) == "fraction_total_reads"] <- "Baby_6_Month_4_Swab_Culture_Illumina"

Negative_Control_Illumina <- read_csv("0861-Neg-Con.csv")
Negative_Control_Illumina <- Negative_Control_Illumina %>% select(name, fraction_total_reads)
names(Negative_Control_Illumina)[names(Negative_Control_Illumina) == "fraction_total_reads"] <- "Negative_Control_Illumina"

Positive_Control_Illumina <- read_csv("0861-Pos-Con.csv")
Positive_Control_Illumina <- Positive_Control_Illumina %>% select(name, fraction_total_reads)
names(Positive_Control_Illumina)[names(Positive_Control_Illumina) == "fraction_total_reads"] <- "Positive_Control_Illumina"

Baby_1_Month_4_Swab_Culture_Nanopore <- read_csv("0862-E001.csv")
Baby_1_Month_4_Swab_Culture_Nanopore <- Baby_1_Month_4_Swab_Culture_Nanopore %>% select(name, fraction_total_reads)
names(Baby_1_Month_4_Swab_Culture_Nanopore)[names(Baby_1_Month_4_Swab_Culture_Nanopore) == "fraction_total_reads"] <- "Baby_1_Month_4_Swab_Culture_Nanopore"

Baby_2_Month_4_Swab_Culture_Nanopore <- read_csv("0862-E002.csv")
Baby_2_Month_4_Swab_Culture_Nanopore <- Baby_2_Month_4_Swab_Culture_Nanopore %>% select(name, fraction_total_reads)
names(Baby_2_Month_4_Swab_Culture_Nanopore)[names(Baby_2_Month_4_Swab_Culture_Nanopore) == "fraction_total_reads"] <- "Baby_2_Month_4_Swab_Culture_Nanopore"

Baby_5_Twin_1_Month_4_Swab_Culture_Nanopore <- read_csv("0862-E005-1.csv")
Baby_5_Twin_1_Month_4_Swab_Culture_Nanopore <- Baby_5_Twin_1_Month_4_Swab_Culture_Nanopore %>% select(name, fraction_total_reads)
names(Baby_5_Twin_1_Month_4_Swab_Culture_Nanopore)[names(Baby_5_Twin_1_Month_4_Swab_Culture_Nanopore) == "fraction_total_reads"] <- "Baby_5_Twin_1_Month_4_Swab_Culture_Nanopore"

Baby_6_Month_4_Swab_Culture_Nanopore <- read_csv("0862-E006.csv") 
Baby_6_Month_4_Swab_Culture_Nanopore <- Baby_6_Month_4_Swab_Culture_Nanopore %>% select(name, fraction_total_reads)
names(Baby_6_Month_4_Swab_Culture_Nanopore)[names(Baby_6_Month_4_Swab_Culture_Nanopore) == "fraction_total_reads"] <- "Baby_6_Month_4_Swab_Culture_Nanopore"

Positive_Control_Nanopore <- read_csv("0862-Pos-Con.csv")
Positive_Control_Nanopore <- Positive_Control_Nanopore %>% select(name, fraction_total_reads)
names(Positive_Control_Nanopore)[names(Positive_Control_Nanopore) == "fraction_total_reads"] <- "Positive_Control_Nanopore"

# R can only merge two files each time.
# Merge the files together using the species "name" column.

merged_final <- Baby_1_Month_4_Swab_Culture_Illumina %>%
  full_join(Baby_2_Month_4_Swab_Culture_Illumina, by='name') %>%
  full_join(Baby_5_Twin_1_Month_4_Swab_Culture_Illumina, by='name') %>%
  full_join(Baby_6_Month_4_Swab_Culture_Illumina, by='name') %>%
  full_join(Negative_Control_Illumina, by='name') %>%
  full_join(Positive_Control_Illumina, by='name') %>%
  full_join(Baby_1_Month_4_Swab_Culture_Nanopore, by='name') %>%
  full_join(Baby_2_Month_4_Swab_Culture_Nanopore, by='name') %>%
  full_join(Baby_5_Twin_1_Month_4_Swab_Culture_Nanopore, by='name') %>%
  full_join(Baby_6_Month_4_Swab_Culture_Nanopore, by='name') %>%
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
  filter(Sample_ID %in% c("Baby_1_Month_4_Swab_Culture_Illumina"))

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
speciesPalette <- c(Paracoccus.yeei = "blue1",
                    Paracoccus.denitrificans = "red",
                    Paracoccus.contaminans = "purple",
                    Aeromonas.sp..ASNIH5 = "cadetblue1",
                    Polymorphum.gilvum = "green4",
                    Micrococcus.luteus = "yellow",
                    Paracoccus.aminovorans = "black",
                    Brevundimonas.diminuta = "darkolivegreen1",
                    Defluviimonas.alba = "red4",
                    Rhodobacter.sp..LPB0142 = "sienna4",
                    other = "grey")

x_other_long <- subset(x_other_long, Sample_ID %in% c("Baby_1_Month_4_Swab_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Baby_1_Month_4_Swab_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_1_Month_4_Swab_Culture_Illumina",
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
  filter(Sample_ID %in% c("Baby_2_Month_4_Swab_Culture_Illumina"))

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
speciesPalette <- c(Micrococcus.luteus = "blue1",
                    Micrococcus.sp..A1 = "red",
                    Micrococcus.sp..28 = "purple",
                    Kytococcus.sedentarius = "cadetblue1",
                    Kocuria.rhizophila = "green4",
                    Salmonella.enterica = "yellow",
                    Micrococcus.sp..V7 = "black",
                    Tessaracoccus.flavescens = "darkolivegreen1",
                    Tessaracoccus.sp..Marseille.P5995 = "red4",
                    Kocuria.palustris = "sienna4",
                    other = "grey")

x_other_1_long <- subset(x_other_1_long, Sample_ID %in% c("Baby_2_Month_4_Swab_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Baby_2_Month_4_Swab_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_1_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_2_Month_4_Swab_Culture_Illumina",
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
  filter(Sample_ID %in% c("Baby_5_Twin_1_Month_4_Swab_Culture_Illumina"))

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
speciesPalette <- c(Paenibacillus.yonginensis = "blue1",
                    Thermobacillus.composti = "red",
                    Paenibacillus.glucanolyticus = "purple",
                    Paenibacillus.stellifer = "cadetblue1",
                    Salmonella.enterica = "green4",
                    Bacillus.coagulans = "yellow",
                    Clostridium.kluyveri = "black",
                    Amphibacillus.xylanus = "darkolivegreen1",
                    Paenibacillus.sp..CAA11 = "red4",
                    Paenibacillus.ihbetae = "sienna4",
                    other = "grey")

x_other_2_long <- subset(x_other_2_long, Sample_ID %in% c("Baby_5_Twin_1_Month_4_Swab_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Baby_5_Twin_1_Month_4_Swab_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_2_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_5_Twin_1_Month_4_Swab_Culture_Illumina",
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
  filter(Sample_ID %in% c("Baby_6_Month_4_Swab_Culture_Illumina"))

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
speciesPalette <- c(Micrococcus.luteus = "blue1",
                    Kocuria.rhizophila = "red",
                    Micrococcus.sp..V7 = "purple",
                    Micrococcus.sp..A1 = "cadetblue1",
                    Micrococcus.sp..28 = "green4",
                    Dermacoccus.nishinomiyaensis = "yellow",
                    Kocuria.turfanensis = "black",
                    Corynebacterium.deserti = "darkolivegreen1",
                    Janibacter.indicus = "red4",
                    Kocuria.flava = "sienna4",
                    other = "grey")

x_other_3_long <- subset(x_other_3_long, Sample_ID %in% c("Baby_6_Month_4_Swab_Culture_Illumina"))

# organise x axis how you want
x.order <- c("Baby_6_Month_4_Swab_Culture_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_3_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_6_Month_4_Swab_Culture_Illumina",
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
x_other_4 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_4 <- rownames_to_column(x_other_4, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_4_long <- melt(x_other_4, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_4_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Corynebacterium.striatum = "blue1",
                    Streptococcus.mitis = "red",
                    Staphylococcus.epidermidis = "purple",
                    Streptococcus.pneumoniae = "cadetblue1",
                    Acinetobacter.lwoffii = "green4",
                    Micrococcus.luteus = "yellow",
                    Acinetobacter.johnsonii = "black",
                    Cutibacterium.acnes = "darkolivegreen1",
                    Streptococcus.pseudopneumoniae = "red4",
                    Acinetobacter.junii = "sienna4",
                    other = "grey")

x_other_4_long <- subset(x_other_4_long, Sample_ID %in% c("Positive_Control_Illumina"))

# organise x axis how you want
x.order <- c("Positive_Control_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_4_long, aes(x = Sample_ID, y = value, fill = Species)) +
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
x_other_5 <- cbind(x, other)

# Make the rownames into a sample_id column.
x_other_5 <- rownames_to_column(x_other_5, var = "Sample_ID")

# Convert into long format data for plotting.
x_other_5_long <- melt(x_other_5, id.vars = c("Sample_ID"), variable.name = "Species")

# find out the top 10 species to copy and paste below in your colour palette
unique(x_other_5_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Salmonella.enterica = "blue1",
                    Micrococcus.luteus = "red",
                    Paracoccus.yeei = "purple",
                    Corynebacterium.striatum = "cadetblue1",
                    Paenibacillus.yonginensis = "green4",
                    Thermobacillus.composti = "yellow",
                    Kocuria.rhizophila = "black",
                    Paenibacillus.glucanolyticus = "darkolivegreen1",
                    Streptococcus.mitis = "red4",
                    Staphylococcus.epidermidis = "sienna4",
                    other = "grey")

x_other_5_long <- subset(x_other_5_long, Sample_ID %in% c("Negative_Control_Illumina"))

# organise x axis how you want
x.order <- c("Negative_Control_Illumina")

# Plot the data as a stacked bar plot.
ggplot(x_other_5_long, aes(x = Sample_ID, y = value, fill = Species)) +
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
  filter(Sample_ID %in% c("Baby_1_Month_4_Swab_Culture_Nanopore"))

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
speciesPalette <- c(Paracoccus.yeei = "blue1",
                    Paracoccus.denitrificans = "red",
                    Aeromonas.sp..ASNIH5 = "purple",
                    Paracoccus.contaminans = "cadetblue1",
                    Polymorphum.gilvum = "green4",
                    Brevundimonas.diminuta = "yellow",
                    Zymomonas.mobilis = "black",
                    Defluviimonas.alba = "darkolivegreen1",
                    Martelella.sp..AD.3 = "red4",
                    Agrobacterium.tumefaciens = "sienna4",
                    other = "grey")

x_other_6_long <- subset(x_other_6_long, Sample_ID %in% c("Baby_1_Month_4_Swab_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Baby_1_Month_4_Swab_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_6_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_1_Month_4_Swab_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Baby_2_Month_4_Swab_Culture_Nanopore"))

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
speciesPalette <- c(Micrococcus.luteus = "blue1",
                    Micrococcus.sp..A1 = "red",
                    Micrococcus.sp..28 = "purple",
                    Tessaracoccus.flavescens = "cadetblue1",
                    Corynebacterium.deserti = "green4",
                    Paracoccus.yeei = "yellow",
                    Corynebacterium.striatum = "black",
                    Salmonella.enterica = "darkolivegreen1",
                    Paenibacillus.yonginensis = "red4",
                    Thermobacillus.composti = "sienna4",
                    other = "grey")

x_other_7_long <- subset(x_other_7_long, Sample_ID %in% c("Baby_2_Month_4_Swab_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Baby_2_Month_4_Swab_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_7_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_2_Month_4_Swab_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Baby_5_Twin_1_Month_4_Swab_Culture_Nanopore"))

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
speciesPalette <- c(Thermobacillus.composti = "blue1",
                    Paenibacillus.yonginensis = "red",
                    Paracoccus.yeei = "purple",
                    Micrococcus.luteus = "cadetblue1",
                    Corynebacterium.striatum = "green4",
                    Salmonella.enterica = "yellow",
                    Kocuria.rhizophila = "black",
                    Paenibacillus.glucanolyticus = "darkolivegreen1",
                    Streptococcus.mitis = "red4",
                    Staphylococcus.epidermidis = "sienna4",
                    other = "grey")

x_other_8_long <- subset(x_other_8_long, Sample_ID %in% c("Baby_5_Twin_1_Month_4_Swab_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Baby_5_Twin_1_Month_4_Swab_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_8_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_5_Twin_1_Month_4_Swab_Culture_Nanopore",
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
  filter(Sample_ID %in% c("Baby_6_Month_4_Swab_Culture_Nanopore"))

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
speciesPalette <- c(Micrococcus.luteus = "blue1",
                    Kocuria.rhizophila = "red",
                    Micrococcus.sp..V7 = "purple",
                    Micrococcus.sp..A1 = "cadetblue1",
                    Janibacter.indicus = "green4",
                    Micrococcus.sp..28 = "yellow",
                    Dermacoccus.nishinomiyaensis = "black",
                    Kocuria.turfanensis = "darkolivegreen1",
                    Tessaracoccus.flavescens = "red4",
                    Corynebacterium.striatum = "sienna4",
                    other = "grey")

x_other_9_long <- subset(x_other_9_long, Sample_ID %in% c("Baby_6_Month_4_Swab_Culture_Nanopore"))

# organise x axis how you want
x.order <- c("Baby_6_Month_4_Swab_Culture_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_9_long, aes(x = Sample_ID, y = value, fill = Species)) +
  geom_bar(stat = "identity", width = .7) +
  scale_fill_manual(values=speciesPalette) +
  scale_y_continuous(expand = c(0, 0)
                     # limits=c(0, 100.1)
  ) +
  labs(title="Baby_6_Month_4_Swab_Culture_Nanopore",
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
                    Streptococcus.mitis = "purple",
                    Cutibacterium.acnes = "cadetblue1",
                    Micrococcus.luteus = "green4",
                    Staphylococcus.epidermidis = "yellow",
                    Acinetobacter.johnsonii = "black",
                    Streptococcus.pneumoniae = "darkolivegreen1",
                    Corynebacterium.diphtheriae = "red4",
                    Corynebacterium.simulans = "sienna4",
                    other = "grey")

x_other_10_long <- subset(x_other_10_long, Sample_ID %in% c("Positive_Control_Nanopore"))

# organise x axis how you want
x.order <- c("Positive_Control_Nanopore")

# Plot the data as a stacked bar plot.
ggplot(x_other_10_long, aes(x = Sample_ID, y = value, fill = Species)) +
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

# Combine Figures

x_other_11_long <- rbind.data.frame(x_other_long, x_other_1_long, x_other_2_long, x_other_3_long, 
                                    x_other_4_long, x_other_5_long, x_other_6_long, x_other_7_long, 
                                    x_other_8_long, x_other_9_long, x_other_10_long)

# Find out all the species to be plotted
unique(x_other_11_long$Species)

# Choose some nice colours for the different species
speciesPalette <- c(Paracoccus.yeei = "blue1",
                    Paracoccus.denitrificans = "red",
                    Paracoccus.contaminans = "purple",
                    Aeromonas.sp..ASNIH5 = "cadetblue1",
                    Polymorphum.gilvum = "green4",
                    Micrococcus.luteus  = "yellow",
                    Paracoccus.aminovorans = "black",
                    Brevundimonas.diminuta = "darkolivegreen1",
                    Defluviimonas.alba = "red4",
                    Rhodobacter.sp..LPB0142 = "sienna4",
                    Micrococcus.sp..A1 = "dimgray",                          
                    Micrococcus.sp..28 = "blue4",                                      
                    Kytococcus.sedentarius  = "blueviolet",                       
                    Kocuria.rhizophila = "plum",
                    Salmonella.enterica = "brown4",                              
                    Micrococcus.sp..V7 = "green3",                     
                    Tessaracoccus.flavescens = "cornflowerblue",
                    Tessaracoccus.sp..Marseille.P5995 = "chocolate",             
                    Kocuria.palustris = "chocolate1",           
                    Paenibacillus.yonginensis = "darkmagenta",                
                    Thermobacillus.composti = "khaki4",           
                    Paenibacillus.glucanolyticus ="cyan4", 
                    Paenibacillus.stellifer = "cyan",
                    Bacillus.coagulans = "deepskyblue",
                    Clostridium.kluyveri = "deeppink",
                    Amphibacillus.xylanus = "deeppink3",
                    Paenibacillus.sp..CAA11 = "darkolivegreen3",
                    Paenibacillus.ihbetae = "darkred",
                    Dermacoccus.nishinomiyaensis = "palegreen",
                    Kocuria.turfanensis = "#ffc425",
                    Corynebacterium.deserti = "#f37735",
                    Janibacter.indicus = "wheat",
                    Kocuria.flava = "#d11141",
                    Corynebacterium.striatum = "yellow3",
                    Streptococcus.mitis = "tan",
                    Staphylococcus.epidermidis = "salmon",
                    Streptococcus.pneumoniae = "#E76BF3",
                    Acinetobacter.lwoffii = "#529EFF",
                    Acinetobacter.johnsonii = "khaki",               
                    Cutibacterium.acnes = "#00C08D",         
                    Streptococcus.pseudopneumoniae = "#00b159",
                    Acinetobacter.junii = "#72B000",                 
                    Zymomonas.mobilis = "salmon3",         
                    Martelella.sp..AD.3 = "#F8766D",          
                    Agrobacterium.tumefaciens = "#9590FF",     
                    Corynebacterium.diphtheriae = "darkgoldenrod1",           
                    Corynebacterium.simulans = "brown3",
                    other = "grey")


# Order x axis labels

x.order <- c("Baby_1_Month_4_Swab_Culture_Illumina", "Baby_1_Month_4_Swab_Culture_Nanopore", 
             "Baby_2_Month_4_Swab_Culture_Illumina", "Baby_2_Month_4_Swab_Culture_Nanopore", 
             "Baby_5_Twin_1_Month_4_Swab_Culture_Illumina", "Baby_5_Twin_1_Month_4_Swab_Culture_Nanopore",
             "Baby_6_Month_4_Swab_Culture_Illumina", "Baby_6_Month_4_Swab_Culture_Nanopore",
             "Positive_Control_Illumina", "Positive_Control_Nanopore", 
             "Negative_Control_Illumina", "Negative_Control_Nanopore")

# Plot the individual plots into one plot

ggplot(x_other_11_long, aes(x = Sample_ID, y = value, fill = Species)) +
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
