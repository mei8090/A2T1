## Question 3
Country <- c("Belgium","Spain","Italy","France","UK","Netherlands","Sweden","Switzerland","Germany","Australia")
Deaths <- c(62.11,49.63,44.09,34.17,31.27,26.06,21.55,18.9,7.21,0.33)
df <- data.frame(col1 = Country, col2 = Deaths)
library(ggplot2)
gg1 <- ggplot(data=df, aes(x=reorder(Country,+Deaths), y=Deaths)) + geom_bar(stat = 'identity', fill="steelblue") 
gg2 <- gg1 + coord_flip()
gg3 <- gg2 + labs(title="Australian efficiency vs European efficiency",subtitle = "Covid-19 deaths per 100,000 population, to 28th April 2020", x=NULL, y=NULL, caption = "Source: https://coronavirus.jhu.edu/data/mortality")
gg3
