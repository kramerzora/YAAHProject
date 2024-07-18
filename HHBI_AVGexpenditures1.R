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
hhpibar2 <- ggplot(data = data_melted_hhpi2, aes(x = factor(category, order_hhpi2), y = value, fill = factor(round))) +
  geom_bar(stat = 'identity', position = 'dodge', color='black') +
  scale_x_discrete(labels=c("Low HPI", "Mid HPI", "High HPI"))+
  labs(title = 'Percent Average Expenditure per HPI Level by Round',
       x = 'Category',
       y = 'Percent Avg Expenditure',
       fill = 'Round') +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))+
  geom_text(
    aes(label = value),
    colour = "black", size = 5,
    vjust = -.5, position = position_dodge(.9)
  )+
  scale_fill_manual(values=c("#003262", "#FDB515", "#3B7EA1"))

# Display the chart
hhpibar2
