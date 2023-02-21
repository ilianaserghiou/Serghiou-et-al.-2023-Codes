#install.packages("Rtools")
#install.packages("ggplot2")
library(ggplot2)
#install.packages("ggalluvial")
library(ggalluvial)
#install.packages("dplyr")
library(dplyr, mask.ok = list(stats = c("filter", "lag"),
                              base = c("intersect", "setdiff",
                                       "setequal", "union")))
#install.packages("readr")
library("readr")
#install.packages("tidyverse")
library(tidyverse)

options(scipen=999)

# Set the file location.
setwd("C:/Users/serghioi/Documents/QIB/PhD - Development and Evolution Of The Infant Skin Microbiome/Data Collection/PEARL Study Samples/Data Plots/Promega Maxwell DNA Extraction PEARL Baby Swabs Run 1/Nanopore Swab vs Culture")

data_1 <- read_csv("Swab1.csv")

data_1_t <- t(data_1)

data_1_t <- as.data.frame(data_1_t)

data_1_t$rowsum <- rowSums(data_1_t)

nrow(data_1_t) # 22 rows

data_1_t$Percentage <- 100*(data_1_t$rowsum/sum(data_1_t$rowsum))

data_1_t <- rownames_to_column(data_1_t, var = "Species")

data_1_t <- data_1_t %>%
  select(Species,
         Percentage)

data_1_t$Group <- "Illumina Swab"


data_2 <- read_csv("Culture1.csv")

data_2_t <- t(data_2)

data_2_t <- as.data.frame(data_2_t)

data_2_t$rowsum <- rowSums(data_2_t)

nrow(data_2_t) # 22 rows

data_2_t$Percentage <- 100*(data_2_t$rowsum/sum(data_2_t$rowsum))

data_2_t <- rownames_to_column(data_2_t, var = "Species")

data_2_t <- data_2_t %>%
  select(Species,
         Percentage)

data_2_t$Group <- "Illumina Culture"


data_3 <- read_csv("Swab2.csv")

data_3_t <- t(data_3)

data_3_t <- as.data.frame(data_3_t)

data_3_t$rowsum <- rowSums(data_3_t)

nrow(data_3_t) # 22 rows

data_3_t$Percentage <- 100*(data_3_t$rowsum/sum(data_3_t$rowsum))

data_3_t <- rownames_to_column(data_3_t, var = "Species")

data_3_t <- data_3_t %>%
  select(Species,
         Percentage)

data_3_t$Group <- "Nanopore Swab"


data_4 <- read_csv("Culture2.csv")

data_4_t <- t(data_4)

data_4_t <- as.data.frame(data_4_t)

data_4_t$rowsum <- rowSums(data_4_t)

nrow(data_4_t) # 22 rows

data_4_t$Percentage <- 100*(data_4_t$rowsum/sum(data_4_t$rowsum))

data_4_t <- rownames_to_column(data_4_t, var = "Species")

data_4_t <- data_4_t %>%
  select(Species,
         Percentage)

data_4_t$Group <- "Nanopore Culture"

combined_data <- rbind(data_1_t, data_2_t, data_3_t, data_4_t)


combined_data$Species <- as.factor(combined_data$Species)
combined_data$Group <- as.factor(combined_data$Group)


combined_data_reduced <- combined_data %>%
  filter(Percentage >= 0.5)

# List all species
unique(combined_data_reduced$Species)

ggplot(combined_data_reduced,
       aes(x = Group,
           stratum = Species,
           alluvium = Species,
           y = Percentage,
           label = Species,
           #colour = species,
           fill = Species)) +
  geom_flow(curve_type = "sigmoid", alpha = .5) +
  geom_stratum(width = .6,  alpha = .5, colour = "white")+ 
  #geom_text(stat = "stratum", size = 8, colour = "black") +
  scale_fill_manual(values =  c("red", "orange", "blue", "yellow", "purple", "cadetblue1", "green4",
                                     "salmon", "darkolivegreen1", "#00C08D", "sienna4", "gray", "blue4",
                                     "khaki", "plum", "yellow3", "green3", "cornflowerblue", "chocolate",
                                     "chocolate1", "darkmagenta", "khaki4", "cyan4", "cyan", "deepskyblue",
                                     "deeppink", "deeppink3", "darkolivegreen3", "darkred", "palegreen",
                                     "#ffc425", "#f37735", "gold", "goldenrod3", "darkslategrey", "hotpink",
                                     "hotpink3", "firebrick3", "darkgreen")) +
  labs(title="Comparison of the Total Abundant Species Counts (%) 
Between Illumina and Nanopore Baby Culture and Swab Datasets",
       y = "Total abundant species counts (%)") +
  theme(plot.title = element_text(size=12), #Define the plot title.
        #plot.margin = margin(t = 4, r = 0, b = 0, l = 0), #Define the plot margin size.
        legend.position = "right", #Define the legend position.
        #legend.spacing.x = unit(.05, 'cm'), #Define the x axis legend spacing.
        #legend.spacing.y = unit(.05, 'cm'), #Define the y axis legend spacing.
        legend.margin = margin(t = 0, r = 6, b = 0, l = 0), #Define the legend margins.
        #legend.box.margin = margin(t = 0, r = 0, b = 0, l = 0), #Define the legend box size.
        legend.title = element_text(size=12),
        legend.text = element_text(size=12, face="italic"), #Define the size of the legend text.
        legend.background = element_blank(), #Remove the grey background.
        legend.box.background = element_blank(), # Draw a grew rectangle around the legend
        legend.key = element_blank(), #Remove the box from the legend.
        panel.background = element_blank(), #Remove the grey plot background.
        panel.border = element_blank(), #Remove the plot border.
        panel.grid.major = element_blank(), #Remove the major plot gridlines.
        panel.grid.minor = element_blank(), #Remove the minor plot gridlines.
        axis.title.x = element_text(size=12, colour = "black"), #Define x axis title.
        axis.text.x = element_text(size=8, colour = "black"), #Define x axis labels.
        axis.title.y = element_text(size=12, colour = "black"), #Define y axis title text size.
        axis.text.y = element_text(size=8, colour = "black"), #Define the axis label text size.
        axis.ticks = element_line(size = .35, colour = "black"), #Define x and y axis ticks.
        axis.line = element_line(size = .35, colour = "black"), #Define x and y axis lines.
        aspect.ratio = 1.9) 


ggsave("Test plot comparing top speices by proportion of total counts.pdf",
       width = 20,
       height = 20,
       units = "cm",
       dpi = 300)




