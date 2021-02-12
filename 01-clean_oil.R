library(dplyr)
library(tidyr)

# Subset for period Jan 2014-Dec 2020.
oil_prod_1 <- oil_prod[c(38:187), ]

# Remove empty cells.
oil_production <- oil_prod_1 %>% 
                distinct() %>% # remove duplicates rows
                na_if("") %>% # recode empty strings "" by NAs
                na.omit %>% # remove NAs
                separate(row.names, 
                         c("Month", "Year")) %>% # separate months and year
                rename(Barrels_mlns = Libya.Crude.Oil.Production) %>% # rename column
                arrange(Year)
