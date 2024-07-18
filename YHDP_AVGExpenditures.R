hhap_yhdp
hhap_yhdp2<-hhap_yhdp 
hhap_yhdp2<-hhap_yhdp2[,c(1,4,5)]

# Transform the data to long format using tidyr's pivot_longer
data_melted_yhdp2 <- hhap_yhdp2 %>%
  pivot_longer(cols = -round, names_to = "category", values_to = "value")

# Create the side-by-side bar chart
#order_yhdp2 <- c( 'percent_avg_exp_w_yhdp', 'percent_avg_exp_wo_yhdp')
yhdpbar2 <- ggplot(data = data_melted_yhdp2, aes(x = factor(round), y = value, fill = factor(category))) +
  geom_bar(stat = 'identity', position = 'dodge', colour = "black") +
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
    vjust = -1, position = position_dodge(.9)
  )+
scale_fill_manual(values=c("#003262", "#FDB515", "#3B7EA1"),labels=c('With YHDP','Without YHDP') )

# Display the chart
yhdpbar2

