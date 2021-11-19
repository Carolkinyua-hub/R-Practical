# Using ctrl,shift,C to create Comments
# //step 1.Downloaded Marketing data from Github//
# reading r file marketing.rda for Analysis
setwd("/home/carol/Desktop/R-Code/Practice/marketing.rda")
load("/home/carol/Desktop/R-Code/Practice/marketing.rda")
# view data for analysis
View(marketing)
# transform data into a dataframe
df<-data.frame(marketing)
View(df)
library(ggplot2)
View(df)
install.packages("tidyverse")
# visualizing the impact of facebook activity to sales
ggplot(data=df, aes(x=facebook, y=sales))+ geom_point()

# visualizing the impact of youtube activity to sales
ggplot(data=df, aes(x=youtube, y=sales))+ geom_point()
# visualizing the impact of newspaper ads on sales
ggplot(data=df, aes(x=newspaper, y=sales))+geom_point()



