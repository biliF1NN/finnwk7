setwd("C:/Users/Admin/Desktop/UNSW")
library(tidyverse)
library(dplyr)
library(maps)

re_data=read.csv("beh_alcafdth_lhn_snap.csv", skip=3)
str(re_data)
summary(re_data)
head(re_data)

cols_to_chang_to_factor <- c('X.Local.Health.Districts','X.Sex')
re_data[,cols_to_chang_to_factor]<-lapply(re_data[,cols_to_chang_to_factor],factor)

library(plotly)

ggplot(data=re_data)+
  geom_point(mapping=aes(y= X.Rate.per.100.000.population, x= X.Average.number.per.year, colour=X.Sex))+
  scale_x_continuous(breaks = seq(from=0,to=2000,by=500),limits=c(0,2000))+
  ggtitle("Average death number p/y VS Death rate per 100000 population, Alcohol death ")+
  theme(plot.title=element_text(hjust=0.5,face="bold"))+
  labs(x="Average death (p/y)", y="Death rate (per 100000 persons)")

library(blogdown)
  
