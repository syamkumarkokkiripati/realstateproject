
melbourne.data <- read.csv("E:\\project\\melborne1.csv",header = TRUE,
                           stringsAsFactors = FALSE,
                           strip.white = TRUE,
                           sep = ",",
                           na.strings = c("","NA"))
str(melbourne.data)

library("dplyr")
library("utils")
library("Amelia")
library("VIM")
library("openxlsx")
library("psych")
library("dummies")

summary(melbourne.data)


tail(melbourne.data,10) 

 summary(modified.md)

 library("Amelia")
 missmap(melbourne.data)

 library("VIM")
 aggr(melbourne.data,prop=F,numbers=T)

summary((melbourne.data$Bedroom2))
 table(melbourne.data$Bedroom2)
melbourne.data$Bedroom2[is.na(melbourne.data$Bedroom2)]<- 3

missmap(melbourne.data)
 aggr(melbourne.data,prop=F,numbers=T)

mean(melbourne.data$Price,na.rm=TRUE)
melbourne.data$Price[is.na(melbourne.data$Price)]<- mean(melbourne.data$Price,na.rm=TRUE)#replacing with mean
missmap(melbourne.data)
aggr(melbourne.data,prop=F,numbers=T)

mean(melbourne.data$Landsize,na.rm=TRUE)
melbourne.data$Landsize[is.na(melbourne.data$Landsize)]<- mean(melbourne.data$Landsize,na.rm=TRUE)#replacing with mean
missmap(melbourne.data)
aggr(melbourne.data,prop=F,numbers=T)

mean(melbourne.data$BuildingArea,na.rm=TRUE)
melbourne.data$BuildingArea[is.na(melbourne.data$BuildingArea)]<- mean(melbourne.data$BuildingArea,na.rm=TRUE)#replacing with mean
missmap(melbourne.data)
aggr(melbourne.data,prop=F,numbers=T)

table(melbourne.data$YearBuilt)
melbourne.data$YearBuilt[is.na(melbourne.data$YearBuilt)]<-1970
 missmap(melbourne.data)
aggr(melbourne.data,prop=F,numbers=T)

table(melbourne.data$Car)
melbourne.data$Car[is.na(melbourne.data$Car)]<- 1
missmap(melbourne.data)
aggr(melbourne.data,prop=F,numbers=T)

table(melbourne.data$Bathroom)
melbourne.data$Bathroom[is.na(melbourne.data$Bathroom)]<- 1
missmap(melbourne.data)
aggr(melbourne.data,prop=F,numbers=T)

table(melbourne.data$Rooms)
melbourne.data$Rooms[is.na(melbourne.data$Rooms)]<- 3
 missmap(melbourne.data)
 aggr(melbourne.data,prop=F,numbers=T)

 mean(melbourne.data$Distance,na.rm=TRUE);
melbourne.data$Distance[is.na(melbourne.data$Distance)] <- mean(melbourne.data$Distance,na.rm=TRUE)
 missmap(melbourne.data)
aggr(melbourne.data,prop=F,numbers=T)

table(melbourne.data$Type)
sum(is.na(melbourne.data[, c("Type")]))
melbourne.data$Type[is.na(melbourne.data$Type)] <- 'h'
missmap(melbourne.data)
aggr(melbourne.data,prop=F,numbers=T)


 sum(is.na(melbourne.data[, c("Method")]))
 table(melbourne.data$Method)
melbourne.data$Method[is.na(melbourne.data$Method)]<- 'S'
 missmap(melbourne.data)
aggr(melbourne.data,prop=F,numbers=T)
str(melbourne.data)

 modified.md <- melbourne.data[c(-1,-2,-7)]
modified.md


