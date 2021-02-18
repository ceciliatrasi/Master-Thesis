# PACKAGES ----
# Load libraries.
library(haven)
library(dplyr)
library(tidyr)
library(ggplot2)
library(lubridate)



# IMPORT DATA --------
# Import all data related to oil production in Libya.
# Source: https://www.eia.gov/outlooks/steo/data/browser/#/?v=7&f=M&s=&start=201401&end=202012&chartindexed=0&linechart=~COPR_LY&ctype=linechart&maptype=0&map=&id=.

# Load data of oil production.
oil_prod <- read.csv("Libya_Crude_Oil_Production.csv", 
                     header=T,
                     fill=T,
                     row.names=NULL)



# CREATE DATASET -----
# Subset for period Jan 2014-Dec 2020.
oil_prod_1 <- oil_prod[c(38:187), ]

# Remove empty cells.
oil_libya <- oil_prod_1 %>% 
  distinct() %>% # remove duplicates rows
  na_if("") %>% # recode empty strings "" by NAs
  na.omit %>% # remove NAs
  separate(row.names, 
           c("month", "year")) %>% # separate months and year
  rename(mln_brrls = Libya.Crude.Oil.Production)  #rename column

# Create new variable for month as number. 
oil_libya$M <- "NA" # Create column with NAs
oil_libya$M[oil_libya$month == "Jan"] <- 1 # Fill column with description.
oil_libya$M[oil_libya$month == "Feb"] <- 2
oil_libya$M[oil_libya$month == "Mar"] <- 3
oil_libya$M[oil_libya$month == "Apr"] <- 4
oil_libya$M[oil_libya$month == "May"] <- 5
oil_libya$M[oil_libya$month == "Jun"] <- 6
oil_libya$M[oil_libya$month == "Jul"] <- 7
oil_libya$M[oil_libya$month == "Aug"] <- 8
oil_libya$M[oil_libya$month == "Sep"] <- 9
oil_libya$M[oil_libya$month == "Oct"] <- 10
oil_libya$M[oil_libya$month == "Nov"] <- 11
oil_libya$M[oil_libya$month == "Dec"] <- 12
oil_libya$M <- as.numeric(oil_libya$M) # Make it as factor

# Drop column month.
cols.dont.want <- "month"
oil_final <- oil_libya[, ! names(oil_libya) %in% cols.dont.want, drop = F]

# Reoder columns by name.
col_order3 <- c("year", "M", "mln_brrls")
oil_final <- oil_final[, col_order3]

# Rename variables
oil_final <- oil_final %>%
  rename(month = M)

class(oil_final$month)
class(oil_final$year)

# Transform month and year in numeric variables
oil_final$year <- as.numeric(oil_final$year)

oil_final <- oil_final %>% arrange(year, month)
