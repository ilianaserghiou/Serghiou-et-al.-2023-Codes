#install.packages("readr")
library(readr)
library(ggplot2)
library(ggalluvial)
library(dplyr)
library(tidyverse)

#options(scipen=999)

# Set the file location.
setwd("C:/Users/serghioi/Documents/QIB/PhD - Development and Evolution Of The Infant Skin Microbiome/Data Collection/PEARL Study Swabs/Data Plots/Promega Maxwell DNA Extraction PEARL Baby Swabs Run 1/Illumina Swab vs Culture")

data_1 <- read_csv("Swab.csv")

data_1_t <- t(data_1)

data_1_t <- as.data.frame(data_1_t)

data_1_t <- rownames_to_column(data_1_t, var = "Species")

Species_names_1 <- data_1_t %>%
  select(Species)

Species_names_1$Proportion <- 100/343

Species_names_1$Group <- "Baby Swabs"


data_2 <- read_csv("Culture.csv")

data_2_t <- t(data_2)

data_2_t <- as.data.frame(data_2_t)

data_2_t <- rownames_to_column(data_2_t, var = "Species")

Species_names_2 <- data_2_t %>%
  select(Species)

Species_names_2$Proportion <- 100/210

Species_names_2$Group <- "Baby Cultures"


combined_data <- rbind(Species_names_1, Species_names_2)

combined_data$Species <- as.factor(combined_data$Species)
combined_data$Group <- as.factor(combined_data$Group)


#combined_data_reduced <- combined_data %>%
#  filter(Percentage >= 0.5)


ggplot(combined_data,
       aes(x = Group,
           stratum = Species,
           alluvium = Species,
           y = Proportion,
           label = Species,
           colour = Species,
           fill = Species
       )
) +
  geom_flow(curve_type = "sigmoid", alpha = .5) +
  geom_stratum(width = .6, alpha = .5) +
  geom_text(stat = "stratum", size = 1, colour = "black") +
  labs(title="Comparison of Microbial Composition 
 Between Skin Swabs and Cultures")+
  theme(plot.title = element_text(size=8), #Define the plot title.
        #plot.margin = margin(t = 4, r = 0, b = 0, l = 0), #Define the plot margin size.
        legend.position = "none", #Define the legend position.
        #legend.spacing.x = unit(.05, 'cm'), #Define the x axis legend spacing.
        #legend.spacing.y = unit(.05, 'cm'), #Define the y axis legend spacing.
        legend.margin = margin(t = 0, r = 6, b = 0, l = 0), #Define the legend margins.
        #legend.box.margin = margin(t = 0, r = 0, b = 0, l = 0), #Define the legend box size.
        legend.title = element_text(size=8),
        legend.text = element_text(size=8), #Define the size of the legend text.
        legend.background = element_blank(), #Remove the grey background.
        legend.box.background = element_rect(colour = "grey"), # Draw a grew rectangle around the legend
        legend.key = element_blank(), #Remove the box from the legend.
        panel.background = element_blank(), #Remove the grey plot background.
        panel.border = element_blank(), #Remove the plot border.
        panel.grid.major = element_blank(), #Remove the major plot gridlines.
        panel.grid.minor = element_blank(), #Remove the minor plot gridlines.
        axis.title.x = element_text(size=8, colour = "black"), #Define x axis title.
        axis.text.x = element_text(size=8, colour = "black"), #Define x axis labels.
        axis.title.y = element_blank(), #Define y axis title text size.
        axis.text.y = element_blank(), #Define the axis label text size.
        axis.ticks.y = element_blank(), 
        axis.ticks = element_line(size = .35, colour = "black"), #Define x and y axis ticks.
        axis.line = element_line(size = .35, colour = "black"), #Define x and y axis lines.
        aspect.ratio = 2) 

ggsave("Test plot comparing all names.pdf",
       width = 20,
       height = 29,
       units = "cm",
       dpi = 300)




