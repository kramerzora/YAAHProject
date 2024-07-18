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

#finalgraphs
hhpibar1
hhpibar2
overviewbar
yhdpbar1
yhdpbar2
geotypebar1
geotypebar2



##OVERVIEW
# Transform the data to long format using tidyr's pivot_longer
data_melted_overview <- hhap_overview %>%
  pivot_longer(cols = -round, names_to = "category", values_to = "value")

# Create the side-by-side bar chart
order_overview<-c('percent_obl_meets_threshold','percent_exp_meets_threshold')
overviewbar <- ggplot(data = data_melted_overview, aes(x = factor(category,order_overview), y = value, fill = factor(round))) +
  geom_bar(stat = 'identity', position = 'dodge') +
  scale_x_discrete(labels=c("Obligations", "Expenditures"))+
  labs(title = 'Percent Grantees Who Met Threshold in Category',
       x = 'Category',
       y = 'Value',
       fill = 'Round') +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))+
  geom_text(
    aes(label = value),
    colour = "white", size = 3,
    vjust = 1.5, position = position_dodge(.9)
  )

# Display the chart
overviewbar


##HHPI
# Transform the data to long format using tidyr's pivot_longer
data_melted_hhpi<- hhap_hhpi %>%
  pivot_longer(cols = -round, names_to = "category", values_to = "value")

# Create the side-by-side bar chart
colnames(hhap_hhpi)
order_hhpi<- c("high_hpi_meetsthreshold" , "mid_hpi_meetsthreshold" ,  "low_hpi_meetsthreshold" , 
"percent_avg_exp_high_hpi", "percent_avg_exp_mid_hpi" , "percent_avg_exp_low_hpi")
hhpibar <- ggplot(data = data_melted_hhpi, aes(x = factor(category,order_hhpi), y = value, fill = factor(round))) +
  geom_bar(stat = 'identity', position = 'dodge') +
  scale_x_discrete(labels=c("%", "Percent Expenditures Meet Threshold"))+
  labs(title = 'Percent Grantees Who Met Threshold in Category',
       x = 'Category',
       y = 'Value',
       fill = 'Round') +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))+
geom_text(
  aes(label = value),
  colour = "white", size = 3,
  vjust = 1.5, position = position_dodge(.9)
)

# Display the chart
hhpibar


##GEOTYPE
# Transform the data to long format using tidyr's pivot_longer
data_melted_geotype <- hhap_geotype %>%
  pivot_longer(cols = -round, names_to = "category", values_to = "value")

# Create the side-by-side bar chart
order_geo<- c( "urban_meetsthreshold"  ,   "suburban_meetsthreshold" , "rural_meetsthreshold" ,   
                "percent_avg_exp_urban"  ,  "percent_avg_exp_suburban", "percent_avg_exp_rural" )
geobar <- ggplot(data = data_melted_geotype, aes(x = factor(category,order_geo), y = value, fill = factor(round))) +
  geom_bar(stat = 'identity', position = 'dodge') +
  labs(title = 'Side-by-Side Bar Chart by Round',
       x = 'Category',
       y = 'Value',
       fill = 'Round') +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))+
  geom_text(
    aes(label = value),
    colour = "white", size = 3,
    vjust = 1.5, position = position_dodge(.9)
  )

# Display the chart
geobar

##yhdp
# Transform the data to long format using tidyr's pivot_longer
data_melted_yhdp<- hhap_yhdp %>%
  pivot_longer(cols = -round, names_to = "category", values_to = "value")

# Create the side-by-side bar chart
order_yhdp<- c( "percentspent_w_yhdp_meetsthreshold" 
                ,"percentspent_wo_yhdp_meetsthreshold" ,"percent_avg_exp_w_yhdp"             
               ,"percent_avg_exp_wo_yhdp")
yhdpbar <- ggplot(data = data_melted_yhdp, aes(x = factor(category,order_yhdp), y = value, fill = factor(round))) +
  geom_bar(stat = 'identity', position = 'dodge') +
  labs(title = 'Side-by-Side Bar Chart by Round',
       x = 'Category',
       y = 'Value',
       fill = 'Round') +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))+
  geom_text(
    aes(label = value),
    colour = "white", size = 3,
    vjust = 1.5, position = position_dodge(.9)
  )

# Display the chart
yhdpbar


        