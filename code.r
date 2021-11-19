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
# Accessing ggplot for visualization
library(ggplot2)
View(df)
# Re-installing tidyverse for analysis purposes
install.packages("tidyverse" , Dependencies = "TRUE")
# Accessing tidyverse
library(tidyverse)
# Accessing(dplyr)
library(dplyr)
# visualizing the impact of facebook activity to sales
lm_F<-ggplot(data=df, aes(x=facebook, y=sales))+geom_point(color="blue")+geom_smooth(method="lm")
# linear model summary of sales based off facebook data
summary()
# visualizing the impact of youtube activity to sales
lm_Y<-ggplot(data=df, aes(x=youtube, y=sales))+ geom_point(color="red")+geom_smooth(method="lm")
# visualizing the impact of newspaper ads on sales
lm_N<-ggplot(data=df, aes(x=newspaper, y=sales))+geom_point(color="green")+geom_smooth(method="lm")


