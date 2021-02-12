# IMPORT DATA --------
# Import all data related to oil production in Libya.
# Source: https://www.eia.gov/outlooks/steo/data/browser/#/?v=7&f=M&s=&start=201401&end=202012&chartindexed=0&linechart=~COPR_LY&ctype=linechart&maptype=0&map=&id=.

# Load libraries.
library(haven)
library(dplyr)
library(ggplot2)
library(lubridate)

# Load data of oil production.  ####
oil_prod <- read.csv("Libya_Crude_Oil_Production.csv", 
                     header=T,
                     fill=T,
                     row.names=NULL)


