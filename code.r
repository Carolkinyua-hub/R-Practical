# Using ctrl,shift,C to create Comments
# //step 1.Downloaded Marketing data from Github//
# reading r file marketing.rda for Analysis
setwd("/home/carol/Desktop/R-Code/Practice/marketing.rda")
load("/home/carol/Desktop/R-Code/Practice/marketing.rda")
# view data for analysis
View(marketing)
# transform data into a dataframe
marketingdf <-data.frame(marketing)
View(marketingdf)  
ls(marketingdf)
marketing_Channel<-c("facebook","youtube","newspaper")
View(marketing_Channel)