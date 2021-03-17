#####################################################################
##
## Script name: vwcEvents.R
##
## Author: Adam N. Price
##
## Date Created: 2021-03-17
##
## Copyright (c) Adam N. Price, 2021
## Email: adnprice@ucsc.edu
##
############################# Description ##########################
##
##  Finds events for volumetric water content and calculates the
##   following metrics:
##
############################# Packages #############################
library(tidyverse)
library(ggplot2)
library(lubridate)
##   
##
############################# Code ################################

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Step: Load testing data and clean up a bit
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

dat = read.csv("./data/N1_MungeVer2_15Nov19_21May20.csv")

dat  = dat %>%
  select(TIMESTAMP,Ptemp_C,Depth,VWC)%>%
  mutate(TIMESTAMP = lubridate::as_datetime(TIMESTAMP),
         Depth = as.factor(Depth)) %>%
  setNames(c("dateTime","Temperature","Depth","VWC"))

# ggplot(dat)+
#   geom_point(aes(x=dateTime,y=VWC,color=as.factor(Depth)))
  