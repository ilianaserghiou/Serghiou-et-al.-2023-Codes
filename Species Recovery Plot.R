#install.packages("tidyverse")
library("tidyverse")
#install.packages("reshape2")
library("reshape2")

# Set the working directory
setwd("C:/Users/serghioi/Documents/QIB/PhD - Development and Evolution Of The Infant Skin Microbiome/Data Collection/PEARL Study Swabs/Data Plots/Promega Maxwell DNA Extraction PEARL Baby Swabs Run 3/Illumina 5Gbp Sample Depth")

# Import the  data
data <- read_csv("Species Recovery-Reads Removed.csv") 

# Convert into long format data.
data_long <- data %>%
  pivot_longer(!"Sample ID", names_to = "Percentage_of_reads", values_to = "Number_of_species") %>%
  rename("Sample_ID" = "Sample ID")

# Remove unnecessary words in the variable.
data_long$Percentage_of_reads <- gsub("No. Species at ", "", data_long$Percentage_of_reads)
data_long$Percentage_of_reads <- gsub("% Reads", "", data_long$Percentage_of_reads)

##Make the plot
ggplot(data_long,
       #aes(x = fct_inorder(Percentage_of_reads), # Puts axis in correct order
       
       aes(x = factor(Percentage_of_reads, level = c(" 10", "20", "30", "40", "50", "60", "70", "80", "90", "100")),
                  y = Number_of_species
                  )
       ) +
  geom_boxplot(color="darkblue",
               fill = "white",
               outlier.shape = NA
               ) +
  geom_point(shape = 21,
             size = 1
             ) +
  geom_line(aes(group=Sample_ID), 
          linetype="12",
          colour = "grey20"
          ) +
  labs(title = "",
       x ="Percentage of reads remaining",
       y = "Number of species"
       ) + 
  theme(plot.margin = margin(t = 4, r = 4, b = 4, l = 4), #Define the plot margin size.
        legend.position = "none", #Define the legend position.
        panel.background = element_blank(), #Remove the grey plot background.
        panel.border = element_blank(), #Remove the plot border.
        panel.grid.major = element_blank(), #Remove the major plot gridlines.
        panel.grid.minor = element_blank(), #Remove the minor plot gridlines.
        axis.title.x = element_text(size=20, colour = "black"), #Define x axis title.
        axis.text.x = element_text(size=16, colour = "black"), #Define x axis labels.
        axis.title.y = element_text(size=20, colour = "black"), #Define y axis title text size.
        axis.text.y = element_text(size=16, colour = "black"), #Define the axis label text size.
        axis.ticks = element_line(size = .35, colour = "black"), #Define x and y axis ticks.
        axis.line = element_line(size = .35, colour = "black"), #Define x and y axis lines.
        aspect.ratio = 1 #Define the plot aspect ratio.
        )

#Save as a pdf for size to go into Inkspace figure
ggsave("Percentage of reads.pdf",
       width= 15,
       height = 15,
       unit = "cm",
       dpi = 300)
ggsave("Percentage of reads.png",
       width= 15,
       height = 15,
       unit = "cm",
       dpi = 300)

################################################################################

# Import the  data
data2 <- read_csv("Species Recovery at 1 and 5Gbp.csv") 

# Convert into long format data.
data2_long <- data2 %>%
  pivot_longer(!"Sample ID", names_to = "Sequencing_depth", values_to = "Number_of_species") %>%
  rename("Sample_ID" = "Sample ID")

# Remove unnecessary words in the variable.
data2_long$Sequencing_depth <- gsub("No. Species at ", "", data2_long$Sequencing_depth)

##Make the plot
ggplot(data2_long,
       aes(x=factor(Sequencing_depth, level=c("5Gbp", "1Gbp")),# This code ensures larger depth is plotted first
           y = Number_of_species
       )
) +
  geom_boxplot(color="darkblue",
               fill = "white",
               outlier.shape = NA
  ) +
  geom_point(shape = 21,
             size = 1
  ) +
  geom_line(aes(group=Sample_ID), 
            linetype="12",
            colour = "grey20"
  ) +
  labs(title = "",
       x ="Sequencing depth",
       y = "Number of species"
  ) + 
  theme(plot.margin = margin(t = 4, r = 4, b = 4, l = 4), #Define the plot margin size.
        legend.position = "none", #Define the legend position.
        panel.background = element_blank(), #Remove the grey plot background.
        panel.border = element_blank(), #Remove the plot border.
        panel.grid.major = element_blank(), #Remove the major plot gridlines.
        panel.grid.minor = element_blank(), #Remove the minor plot gridlines.
        axis.title.x = element_text(size=8, colour = "black"), #Define x axis title.
        axis.text.x = element_text(size=8, colour = "black"), #Define x axis labels.
        axis.title.y = element_text(size=8, colour = "black"), #Define y axis title text size.
        axis.text.y = element_text(size=8, colour = "black"), #Define the axis label text size.
        axis.ticks = element_line(size = .35, colour = "black"), #Define x and y axis ticks.
        axis.line = element_line(size = .35, colour = "black"), #Define x and y axis lines.
        aspect.ratio = 1 #Define the plot aspect ratio.
  )

#Save as a pdf for size to go into Inkspace figure
ggsave("Sequencing depth.pdf",
       width= 15,
       height = 15,
       unit = "cm",
       dpi = 300)
ggsave("Sequencing depth.png",
       width= 15,
       height = 15,
       unit = "cm",
       dpi = 300)

