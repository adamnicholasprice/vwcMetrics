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
##   
##
############################# Code ################################

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Step: Load Testing Data
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

dat = read.csv("./data/N1_MungeVer2_15Nov19_21May20.csv")
