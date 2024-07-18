# ##HHPI
# #delete rows
# hhap_geotype
# hhap_geotype1<-hhap_geotype 
# hhap_geotype1<-hhap_geotype[,1:4]
# # Transform the data to long format using tidyr's pivot_longer
# data_melted_geotype1<- hhap_geotype1 %>%
#   pivot_longer(cols = -round , names_to = "category", values_to = "value")
# 
# # Create the side-by-side bar chart
# order_geotype1<- 
#   c( "urban_meetsthreshold"  ,   "suburban_meetsthreshold" , "rural_meetsthreshold" )
# geotypebar1 <- ggplot(data = data_melted_geotype1, 
#                       aes(x = factor(category, order_geotype1), y = value, fill = factor(round))) +
#   geom_bar(stat = 'identity', position = 'dodge', color='black') +
#   scale_x_discrete(labels=c("Urban", "Suburban", "Rural"))+
#   labs(title = 'Percent Grantees Who Met Threshold in Category by Round',
#        x = 'Category',
#        y = 'Percent Grantees',
#        fill = 'Round') +
#   theme(axis.text.x = element_text(angle = 45, hjust = 1))+
#   geom_text(
#     aes(label = value),
#     colour = "black", size = 3,
#     vjust = -.5, position = position_dodge(.9)
#   )+
#   scale_fill_manual(values=c("#003262", "#FDB515", "#3B7EA1"))
# 
# # Display the chart
# geotypebar1



##HHPI
#delete rows
hhap_geotype
hhap_geotype1<-hhap_geotype 
hhap_geotype1<-hhap_geotype[,1:4]
# Transform the data to long format using tidyr's pivot_longer
data_melted_geotype1<- hhap_geotype1 %>%
  pivot_longer(cols = -round , names_to = "category", values_to = "value")

# Create the side-by-side bar chart
# order_geotype1<- 
#   c( "urban_meetsthreshold"  ,   "suburban_meetsthreshold" , "rural_meetsthreshold" )
geotypebar1 <- ggplot(data = data_melted_geotype1, 
                      aes(x = factor(round), y = value, fill = factor(category))) +
  geom_bar(stat = 'identity', position = 'dodge', color='black') +
  scale_x_discrete(labels=c("Round 1", "Round 2", "Round 3"))+
  labs(
       x = 'Category',
       y = '% Meeting Youth Set-Aside Requirement',
       fill = 'Urbanicity') +
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
  scale_fill_manual(values=c("#003262", "#FDB515", "#3B7EA1"), labels=c('Rural', 'Suburban', 'Urban'))

# Display the chart
geotypebar1









# labels=c("Urban", "Suburban", "Rural")

























