#install.packages("ggplot2")
library(ggplot2)
#install.packages("dplyr")
library(dplyr)
#install.packages("reshape2")
library(reshape2)

# Set the working directory (The folder on you computer that the files are stored in).
setwd("C:/Users/serghioi/Documents/QIB/PhD - Development and Evolution Of The Infant Skin Microbiome/Data Collection/DNA Extrac. Method Development/Data Plots/Incubation Time Comparison")

#Import the data.
data <-  read.csv("Incubation Time Comparison Data2.csv")

# Convert the data from wide to long format using "melt".
data_long <- melt(data, id.vars = c("Sample", "Time"), variable.name = "Qubit")

# Set the metadata columns as factors.
data_long$Sample <- as.factor(data_long$Sample)
data_long$Time <- as.factor(data_long$Time)


##################################################################################################################

# First step making basic box plots.
ggplot(data_long, aes(x = Time, y = value, shape = Time, colour = Time, fill = Time)) +
  geom_boxplot(position = position_dodge(.8), outlier.shape = NA, aes(shape = Time, colour = Time, fill = Time), lwd = .5)

##################################################################################################################

# Add dot plots on top of the box plots.
ggplot(data_long, aes(x = Time, y = value, shape = Time, colour = Time, fill = Time)) +
  geom_boxplot(position = position_dodge(.8), outlier.shape = NA, aes(shape = Time, colour = Time, fill = Time), lwd = .5) +
  geom_point(position = position_dodge(.8), aes(shape = Time, colour = Time, fill = Time), size = 4, stroke = .5)

##################################################################################################################

# Add colours and labels.
ggplot(data_long,aes(x = Time, y = value, shape = Time, colour = Time, fill = Time)) +
  geom_boxplot(position = position_dodge(.8), outlier.shape = NA, aes(shape = Time, colour = Time, fill = Time), lwd = .5) +
  geom_point(position = position_dodge(.8), aes(shape = Time, colour = Time, fill = Time), size = 4, stroke = .5) +
  #facet_grid(cols = vars(Species)) +
  scale_fill_manual(values = c("white", "white", "white", "white")) +
  scale_color_manual(values = c("pink", "skyblue", "green")) +
  scale_shape_manual(values = c(21, 21, 21)) +
  labs(#title="",
    #x="",
    y = "Qubit Concentration ng/ul")

##################################################################################################################

# Add the full theme customisation.
ggplot(data_long, aes(x = Time, y = value, shape = Time, colour = Time, fill = Time)) +
  geom_boxplot(position = position_dodge(.8), outlier.shape = NA, aes(shape = Time, colour = Time, fill = Time), lwd = .5) +
  geom_point(position = position_dodge(.8), aes(shape = Time, colour = Time, fill = Time), size = 4, stroke = .5) +
  #facet_grid(cols = vars(Species)) +
  scale_fill_manual(values = c("white", "white", "white")) +
  scale_color_manual(values = c("deeppink", "deepskyblue", "green")) +
  scale_shape_manual(values = c(21, 21, 21)) +
  labs(#title="GC-AT Content Comparison Between Platforms",
    x="Time (Hours)",
    y = "Qubit Concentration ng/ul") +
  theme(plot.title = element_text(size = 8),
    #Define the plot title.
    ##plot.margin = margin(t = 4, r = 4, b = 4, l = 4),
    #Define the plot margin size.
    legend.position = "right",
    #Define the legend position.
    #legend.direction = "horizontal",
    #legend.spacing.x = unit(.05, 'cm'), #Define the x axis legend spacing.
    #legend.spacing.y = unit(.05, 'cm'), #Define the y axis legend spacing.
    ##legend.margin = margin(t = 0, r = 0, b = 0, l = 0),
    #Define the legend margins.
    ##legend.box.margin = margin(t = -10, r = -10, b = 0, l = -10),
    #Define the legend box size.
    legend.title = element_text(size = 10),
    #Define the legend title.
    legend.text = element_text(size = 8),
    #Define the size of the legend text.
    legend.background = element_blank(),
    #Remove the grey background.
    legend.key = element_blank(),
    #Remove the box from the legend.
    panel.background = element_blank(),
    #Remove the grey plot background.
    panel.border = element_blank(),
    #Remove the plot border.
    panel.grid.major = element_blank(),
    #Remove the major plot gridlines.
    panel.grid.minor = element_blank(),
    #Remove the minor plot gridlines.
    axis.title.x = element_text(size = 10, colour = "black"),
    #Define x axis title.
    axis.text.x = element_text(size = 8, colour = "black", angle = 0, hjust = .5, vjust = .5),
    #Define x axis labels.
    axis.title.y = element_text(size = 10, colour = "black"),
    #Define y axis title text size.
    axis.text.y = element_text(size = 8, colour = "black"),
    #Define the axis label text size.
    axis.ticks = element_line(size = .5, colour = "black"),
    #Define x and y axis ticks.
    axis.line = element_line(size = .5, colour = "black"),
    #Define x and y axis lines.
    aspect.ratio = .5
  )   #Define the plot aspect ratio.

#Save
ggsave(
  "GC-AT Content Comparison Between Platforms.png",
  width = 10,
  height = 10,
  units = c("cm"),
  dpi = 300)
