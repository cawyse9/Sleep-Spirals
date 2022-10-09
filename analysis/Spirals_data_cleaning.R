# Clean data

## get packages
library(dplyr)
library(readxl)
library(ggplot2)
library(lubridate)
library(tidyverse)
library(viridis)

## format accelerometer files for sleep spirals
timeAWD <- Genea23$`Genea23_pre_left wrist_015272_2014-03-12 09-46-05.AWD`[2]
dateAWD <- Genea23$`Genea23_pre_left wrist_015272_2014-03-12 09-46-05.AWD`[1] #date extract
ActAWD <- list(Genea23[-c(1:6),]) #get accel data
datetimeAWD <- paste(dateAWD, timeAWD)
datetimeAWD <- as.POSIXct(datetimeAWD, format = '%d-%b-%y %H:%M:%S',tz="GMT") #format date
ActAWD_data <- seq(from = datetimeAWD, length.out=lengths(ActAWD[[1]]), by=60) #seq generate class 'POSIXt'along.with = ActAWD
ActAWD <- data.frame(ActAWD)
colnames(ActAWD) <- "Act" #rename the columns
ActAWD$time <- ActAWD_data
ActAWD$Act <- as.numeric(ActAWD$Act)
str(ActAWD)

## get the data frame into 15min bins
ActAWD$hour = as.numeric(ActAWD$time) %% (24*60*60) / 3600 # Get hour from time
ActAWD$day =  as.Date(ActAWD$time)# Get day from time
ActAWD$min <- minute(ActAWD$time)#get minute from time

str(ActAWD)
hour_sum = ActAWD %>% 
  mutate(hour.group = cut(hour, breaks=seq(0,24,0.25), labels=seq(0,23.75,0.25), include.lowest=TRUE),
         hour.group = as.numeric(as.character(hour.group))) %>%
  group_by(day, hour.group) %>%
  summarise(Act.h = mean(Act)) %>%
  mutate(spiralTime = as.POSIXct(day) + hour.group*3600)


hour_sum = ActAWD %>% 
  mutate(hour.group = cut(hour, breaks=seq(0,24,0.25), labels=seq(0,23.75,0.25), include.lowest=TRUE),
         hour.group = as.numeric(as.character(hour.group))) %>%
  group_by(day, hour.group) %>%
  summarise(Act.h = mean(Act)) %>%
  mutate(spiralTime = as.POSIXct(day) + hour.group*3600)

