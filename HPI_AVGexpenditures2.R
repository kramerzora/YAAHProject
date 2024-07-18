##HHPI
#delete rows
hhap_hhpi
hhap_hhpi2<-hhap_hhpi 
hhap_hhpi2<-hhap_hhpi[,c(1,5,6,7)]
# Transform the data to long format using tidyr's pivot_longer
data_melted_hhpi2<- hhap_hhpi2 %>%
  pivot_longer(cols = -round , names_to = "category", values_to = "value")


colnames(hhap_hhpi2)

# Create the side-by-side bar chart
order_hhpi2<- c("percent_avg_exp_low_hpi", "percent_avg_exp_mid_hpi",  "percent_avg_exp_high_hpi" )
hhpibar2 <- ggplot(data = data_melted_hhpi2, aes(x = factor(round), y = value, fill = factor(category, order_hhpi2))) +
  geom_bar(stat = 'identity', position = 'dodge', color='black') +
  scale_x_discrete(labels=c("Round 1 ", "Round 2", "Round 3"))+
  labs(
       x = 'Category',
       y = 'Avg % Youth Set-Aside Expenditures') +
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
hhpibar2
