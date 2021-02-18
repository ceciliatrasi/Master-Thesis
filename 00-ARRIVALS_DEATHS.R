# PACKAGES -----
library(dplyr)
library(tidyr)
library(lubridate)

# IMPORT DATA ------
# Load data
DATASET <- read.csv("DATASET.csv")

# Copy dataset to safe object.
ar_dt <- DATASET

# CREATE DATASET -----

# Substitute month abbreviation with digits.
ar_dt$month_year <- gsub("Jan", "1-01", 
                             gsub("Feb", "2-01", 
                                  gsub("Mar", "3-01",
                                       gsub("Apr", "4-01", 
                                            gsub("May", "5-01", 
                                                 gsub("Jun", "6-01", 
                                                      gsub("Jul", "7-01", 
                                                           gsub("Aug", "8-01",
                                                                gsub("Sep", "9-01", 
                                                                     gsub("Oct", "10-01", 
                                                                          gsub("Nov", "11-01", 
                                                                               gsub("Dec", "12-01", 
                                                                                    ar_dt$month_year))))))))))))


# Separate months and years and days in different columns
ar_dt <- tidyr::separate(ar_dt, month_year, c('year', 'month', 'day'), sep = "-",remove = FALSE)

# Rewrite the year observations.
ar_dt$year <- gsub("14", "2014", 
                             gsub("15", "2015", 
                                  gsub("16", "2016",
                                       gsub("17", "2017", 
                                            gsub("18", "2018", 
                                                 gsub("19", "2019", 
                                                      gsub("20", "2020",
                                                           ar_dt$year)))))))
# Transform month and year in numeric variables
ar_dt$year <- as.numeric(ar_dt$year)
ar_dt$month <- as.numeric(ar_dt$month)

# Add column with year and month as charachter.
ar_dt$YYY_MMM <- c("2014 Jan",
                            "2014	Feb",
                            "2014	Mar",
                            "2014	Apr"	,
                            "2014	May"	,
                            "2014	Jun"	,
                            "2014	Jul"	,
                            "2014	Aug"	,
                            "2014	Sep"	,
                            "2014	Oct"	,
                            "2014	Nov"	,
                            "2014	Dec"	,
                            "2015	Jan" 	,
                            "2015	Feb"	,
                            "2015	Mar"	,
                            "2015	Apr"	,
                            "2015	May"	,
                            "2015	Jun"	,
                            "2015	Jul"	,
                            "2015	Aug"	,
                            "2015	Sep"	,
                            "2015	Oct"	,
                            "2015	Nov"	,
                            "2015	Dec"	,
                            "2016	Jan" 	,
                            "2016	Feb"	,
                            "2016	Mar"	,
                            "2016	Apr"	,
                            "2016	May"	,
                            "2016	Jun"	,
                            "2016	Jul"	,
                            "2016	Aug"	,
                            "2016	Sep"	,
                            "2016	Oct"	,
                            "2016	Nov"	,
                            "2016	Dec"	,
                            "2017	Jan" 	,
                            "2017	Feb"	,
                            "2017	Mar"	,
                            "2017	Apr"	,
                            "2017	May"	,
                            "2017	Jun"	,
                            "2017	Jul"	,
                            "2017	Aug"	,
                            "2017	Sep"	,
                            "2017	Oct"	,
                            "2017	Nov"	,
                            "2017	Dec"	,
                            "2018	Jan" 	,
                            "2018	Feb"	,
                            "2018	Mar"	,
                            "2018	Apr"	,
                            "2018	May"	,
                            "2018	Jun"	,
                            "2018	Jul"	,
                            "2018	Aug"	,
                            "2018	Sep"	,
                            "2018	Oct"	,
                            "2018	Nov"	,
                            "2018	Dec"	,
                            "2019	Jan" 	,
                            "2019	Feb"	,
                            "2019	Mar"	,
                            "2019	Apr"	,
                            "2019	May"	,
                            "2019	Jun"	,
                            "2019	Jul"	,
                            "2019	Aug"	,
                            "2019	Sep"	,
                            "2019	Oct"	,
                            "2019	Nov"	,
                            "2019	Dec"  ,
                            "2020	Jan" 	,
                            "2020	Feb"	,
                            "2020	Mar"	,
                            "2020	Apr"	,
                            "2020	May"	,
                            "2020	Jun"	,
                            "2020	Jul"	,
                            "2020	Aug"	,
                            "2020	Sep"	,
                            "2020	Oct"	,
                            "2020	Nov"	,
                            "2020	Dec" 
                            )
# Remove unnecessary columns to keep only year, month, arrivals and deaths.
cols.dont.want <- c("month_year", "day", "waves_height", "conflict", "oil")
ar_dt <- ar_dt[, ! names(ar_dt) %in% cols.dont.want, drop = F]

# Substitute observations na/0 in column deaths.
ar_dt$deaths <- gsub("na/0", " ",ar_dt$deaths)

# Rearrange column order.
col_order4 <- c("year", "month", "YYY_MMM", "arrivals", "deaths")
ar_dt <- ar_dt[, col_order4]

