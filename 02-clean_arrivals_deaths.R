library(dplyr)
library(tidyr)
library(lubridate)

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

# Remove unnecessary columns to keep only year, month, arrivals and deaths.
arrivals_deaths <- arrivals_deaths %>%
              select(-c(month_year, day, waves_height, conflict, oil))

# Substitute observations na/0 in column deaths.
arrivals_deaths$deaths <- gsub("na/0", " ",arrivals_deaths$deaths)
