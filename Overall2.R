getwd()
setwd('/Users/zorakramer/Desktop/')
graph3data<-read.csv('GRAPH3Data_rounded.csv')
data_melted_overall2 <- graph3data %>%
  pivot_longer(cols = -Round, names_to = "category", values_to = "value")

order_overview2<-c('Obligations','Expenditures')
overviewbar2 <- ggplot(data = data_melted_overall2, aes(x = factor(Round), 
                                y = value, fill = factor(category, order_overview2))) +
  geom_bar(stat = 'identity', position = 'dodge', colour = "black") +
scale_x_discrete(labels=c("Round 1 ", "Round 2", "Round 3"))+
 labs(
    x = 'Category',
    y = 'Avg % Youth Set-Aside Expenditures',
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
overviewbar2
