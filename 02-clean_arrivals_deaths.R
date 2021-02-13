library(dplyr)
library(tidyr)
library(lubridate)

# Load data
DATASET <- read.csv("DATASET.csv")

# Copy dataset to safe object.
arrivals_deaths <- DATASET

###### Code month_year as date variable.
# Find class.
class(arrivals_deaths$month_year) 

# Substitute month abbreviation with digits.
arrivals_deaths$month_year <- gsub("Jan", "01-01", 
                             gsub("Feb", "02-01", 
                                  gsub("Mar", "03-01",
                                       gsub("Apr", "04-01", 
                                            gsub("May", "05-01", 
                                                 gsub("Jun", "06-01", 
                                                      gsub("Jul", "07-01", 
                                                           gsub("Aug", "08-01",
                                                                gsub("Sep", "09-01", 
                                                                     gsub("Oct", "10-01", 
                                                                          gsub("Nov", "11-01", 
                                                                               gsub("Dec", "12-01", 
                                                                                    arrivals_deaths$month_year))))))))))))

# Transform month_year in date variable
arrivals_deaths$month_year <- as.Date(arrivals_deaths$month_year)

# Separate months and years and days in different columns
arrivals_deaths <- tidyr::separate(arrivals_deaths, month_year, c('year', 'month', 'day'), sep = "-",remove = FALSE)

# Rewrite the year observations.
arrivals_deaths$year <- gsub("0014", "2014", 
                             gsub("0015", "2015", 
                                  gsub("0016", "2016",
                                       gsub("0017", "2017", 
                                            gsub("0018", "2018", 
                                                 gsub("0019", "2019", 
                                                      gsub("0020", "2020",
                                                           arrivals_deaths$year)))))))

# Add column with year and month as charachter.
arrivals_deaths$YYY_MMM <- c("2014 Jan",
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
arrivals_deaths <- arrivals_deaths %>%
  select(-c(month_year))

# Substitute observations na/0 in column deaths.
arrivals_deaths$deaths <- gsub("na/0", " ",arrivals_deaths$deaths)

# Rearrange column order.
col_order <- c("year", "month", "YYY_MMM", "arrivals", "deaths")
arrivals_deaths <- arrivals_deaths[, col_order]
