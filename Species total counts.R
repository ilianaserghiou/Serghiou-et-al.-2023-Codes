
library(ggplot2)
library(ggalluvial)
library(dplyr)

options(scipen=999)

# Set the file location.
setwd("C:/Users/serghioi/Documents/QIB/PhD - Development and Evolution Of The Infant Skin Microbiome/Data Collection/DNA Extrac. Method Development/Data Plots/Promega Maxwell DNA Extraction PEARL Baby Swabs Run 6/Illumina Swab vs Nanopore Swab")

data_1 <- read_csv("Illumina.csv")

data_1_t <- t(data_1)

data_1_t <- as.data.frame(data_1_t)

data_1_t$rowsum <- rowSums(data_1_t)

nrow(data_1_t) # 22 rows

data_1_t$Percentage <- 100*(data_1_t$rowsum/sum(data_1_t$rowsum))

data_1_t <- rownames_to_column(data_1_t, var = "Species")

data_1_t <- data_1_t %>%
  select(Species,
         Percentage)

data_1_t$Group <- "Illumina"


data_2 <- read_csv("Nanopore.csv")

data_2_t <- t(data_2)

data_2_t <- as.data.frame(data_2_t)

data_2_t$rowsum <- rowSums(data_2_t)

nrow(data_2_t) # 22 rows

data_2_t$Percentage <- 100*(data_2_t$rowsum/sum(data_2_t$rowsum))

data_2_t <- rownames_to_column(data_2_t, var = "Species")

data_2_t <- data_2_t %>%
  select(Species,
         Percentage)

data_2_t$Group <- "Nanopore"

combined_data <- rbind(data_1_t, data_2_t)


combined_data$Species <- as.factor(combined_data$Species)
combined_data$Group <- as.factor(combined_data$Group)


combined_data_reduced <- combined_data %>%
  filter(Percentage >= 0.5)


ggplot(combined_data_reduced,
       aes(x = Group,
           stratum = Species,
           alluvium = Species,
           y = Percentage,
           label = Species,
           colour = Species,
           fill = Species
       )
) +
  geom_flow(curve_type = "sigmoid", alpha = .5) +
  geom_stratum(width = .6, alpha = .5) +
  geom_text(stat = "stratum", size = 2, colour = "black") +
  labs(title="Comparison of the Total Abundant Species Counts (%) 
       Between Illumina and Nanopore Platforms",
       y = "Total abundant species counts (%)") +
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
        axis.title.y = element_text(size=8, colour = "black"), #Define y axis title text size.
        axis.text.y = element_text(size=8, colour = "black"), #Define the axis label text size.
        axis.ticks = element_line(size = .35, colour = "black"), #Define x and y axis ticks.
        axis.line = element_line(size = .35, colour = "black"), #Define x and y axis lines.
        aspect.ratio = 1.9) 

ggsave("Test plot comparing top speices by proportion of total counts.pdf",
       width = 20,
       height = 20,
       units = "cm",
       dpi = 300)




