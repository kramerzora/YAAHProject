# ##HHPI
# #delete rows
# hhap_hhpi
# hhap_hhpi1<-hhap_hhpi 
# hhap_hhpi1<-hhap_hhpi1[,1:4]
# # Transform the data to long format using tidyr's pivot_longer
# data_melted_hhpi1<- hhap_hhpi1 %>%
#   pivot_longer(cols = -round , names_to = "category", values_to = "value")
# 
# # Create the side-by-side bar chart
# order_hhpi1<- c("low_hpi_meetsthreshold", "mid_hpi_meetsthreshold" ,  "high_hpi_meetsthreshold" )
# hhpibar1 <- ggplot(data = data_melted_hhpi1, aes(x = factor(category, order_hhpi1), y = value, fill = factor(round))) +
#   geom_bar(stat = 'identity', position = 'dodge', color='black') +
#   scale_x_discrete(labels=c("Low HPI", "Mid HPI", "High HPI"))+
#   labs(title = 'Percent Grantees Who Met Threshold in Category by Round',
#        x = 'Category',
#        y = 'Percent of Grantees',
#        fill = 'Round') +
#   theme(axis.text.x = element_text(angle = 45, hjust = 1))+
#   geom_text(
#     aes(label = value),
#     colour = "black", size = 3,
#     vjust = 1.5, position = position_dodge(.9)
#   )
# 
# # Display the chart
# hhpibar1



##HHPI
#delete rows
hhap_hhpi
hhap_hhpi1<-hhap_hhpi 
hhap_hhpi1<-hhap_hhpi1[,1:4]
# Transform the data to long format using tidyr's pivot_longer
data_melted_hhpi1<- hhap_hhpi1 %>%
  pivot_longer(cols = -round , names_to = "category", values_to = "value")

# Create the side-by-side bar chart
order_hhpi1<- c("low_hpi_meetsthreshold", "mid_hpi_meetsthreshold" ,  "high_hpi_meetsthreshold" )
hhpibar1 <- ggplot(data = data_melted_hhpi1, aes(x = factor(round), y = value, fill = factor(category, order_hhpi1))) +
  geom_bar(stat = 'identity', position = 'dodge', color='black') +
  scale_x_discrete(labels=c("Round 1 ", "Round 2", "Round 3"))+
  labs(
    x = 'Category',
    y = '% Meeting Min Youth Set-Aside Requirement') +
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
    vjust = -.5, position = position_dodge(.9)
  )+
  scale_fill_manual(values=c("#003262", "#FDB515", "#3B7EA1"), labels=c('Low HPI', "Mid HPI", 'High HPI') )
# Display the chart
hhpibar1





# labels=c('Low HPI', "Mid HPI", 'High HPI') 





























