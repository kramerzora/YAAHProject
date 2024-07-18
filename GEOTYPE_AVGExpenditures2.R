##HHPI
#delete rows
hhap_geotype
hhap_geotype2<-hhap_geotype 
hhap_geotype2<-hhap_geotype[,c(1,5,6,7)]
# Transform the data to long format using tidyr's pivot_longer
data_melted_geotype2<- hhap_geotype2 %>%
  pivot_longer(cols = -round , names_to = "category", values_to = "value")


# Create the side-by-side bar chart
#order_geotype2<- 
 # c(  "percent_avg_exp_urban"  ,  "percent_avg_exp_suburban", "percent_avg_exp_rural" )
geotypebar2 <- ggplot(data = data_melted_geotype2, aes(x = factor(round), 
                                                       y = value, fill = factor(category))) +
  geom_bar(stat = 'identity', position = 'dodge', color='black') +
 scale_x_discrete(labels=c("Round 1 ", "Round 2", "Round 3"))+
  labs(
       x = 'Category',
       y = 'Avg % Youth Set-Aside Expenditures',
       fill = 'Urbanicity') +
  theme(axis.title.x = element_blank(),
        axis.title.y = element_text(size=20),
        axis.text.x = element_text(angle = 0, size = 20),
        axis.text.y=element_text(size=15),
        legend.title= element_blank(),
        legend.text = element_text(size=15),
        legend.position = c(1,1),
        legend.justification = c(1,1),)+
  geom_text(
    aes(label = value),
    colour = "black", size =5,
    vjust = -.5, position = position_dodge(.9)
  )+
  scale_fill_manual(values=c("#003262", "#FDB515", "#3B7EA1"), labels = c("Rural", "Suburban", "Urban"))



# Display the chart
geotypebar2








