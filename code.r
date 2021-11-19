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
# Computing multiple linear regression coefficients
ls()
View(df)
library(dplyr)
# remove sales in order to form X matrix
df2<-select(df,-sales)
View(df2)
#X Converting the dataframe into the X matrix 
X<-data.matrix(df2)
View(df2)
#Creating the Response Variable
df3<-select(df, -facebook,-youtube,-newspaper)
View(df3)
# converting Df3 to Y matrix
Y<-data.matrix(df3)
View(df3)
#Creating the first column of ones
ones<-rep (1, times=200)
View(ones)
#Converting the column into  a matrix
Col1<-matrix(ones)
View(Col1)
# Creating the Dependent Variable
X2<-cbind(Col1,X)
View(X2)
# OLS estimates- Coefficients B1:BK
install.packages("matlib")
# Accessing matlib for computational purposes
library(matlib)
# Computing X2 Transpose
X2_T<-t(X2)
View(X2_T)
#Computing Xt times X
X_new<-X2_T %*% X2
View(X_new)
# Computing the inverse
Xinv<-inv(X_new)
# view inverse
View(Xinv)
# Compute for X transpose Y
X2T_Y<-X2_T %*% Y
View(X2T_Y)
# compute OLS B1-Bk
