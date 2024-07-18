
# Set working directory and read data
setwd('/Users/zorakramer/Downloads')
hhap_geotype <- read.csv('hhap_geotype.csv')
hhap_hhpi <- read.csv('hhap_hhpi.csv')
hhap_overview <- read.csv('hhap_overview.csv')
hhap_yhdp <- read.csv('hhap_yhdp.csv')

# Load necessary libraries
library(ggplot2)
library(dplyr)
library(tidyr)
##OVERVIEW
# Transform the data to long format using tidyr's pivot_longer
data_melted_overview <- hhap_overview %>%
  pivot_longer(cols = -round, names_to = "category", values_to = "value")

# Create the side-by-side bar chart
order_overview<-c('percent_obl_meets_threshold','percent_exp_meets_threshold')
overviewbar <- ggplot(data = data_melted_overview, aes(x = factor(round), y = value, fill = factor(category, order_overview))) +
  geom_bar(stat = 'identity', position = 'dodge', colour = "black") +
  scale_x_discrete(labels=c("Round 1 ", "Round 2", "Round 3"))+
  labs(
       x = 'Category',
       y = '% Meeting Min Youth Set-Aside Requirement',
       fill = 'Round') +
  theme(axis.title.x = element_blank(),
        axis.title.y = element_text(size=20),
        axis.text.x = element_text(angle = 0, size = 20),
        axis.text.y=element_text(size=15),
        legend.title=element_blank(),
        legend.text = element_text(size=15),
        legend.position = c(1,1),
        legend.justification = c(1,1),)+
  geom_text(
    aes(label = value),
    colour = "black", size = 5,
    vjust = -1, position = position_dodge(.9)
  )+
  scale_fill_manual(values=c("#003262", "#FDB515", "#3B7EA1"),labels=c('Obligations','Expenditures') )

# Display the chart
overviewbar
