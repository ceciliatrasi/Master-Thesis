# PACKAGES -----
# Load libraries.
library(haven)
library(dplyr)
library(ggplot2)
library(lubridate)



# IMPORT DATA --------
# Import all data related to conflict deaths.
# Source: Uppsala Conflict Data Program (Date of retrieval: 2021/02/03) 
#         UCDP Conflict Encyclopedia: www.ucdp.uu.se, Uppsala University.

### Libya.  ####
cnfl_lby <- read.csv("conflict libya.csv")

### Tunisia.  ####
cnfl_tns <- read.csv("conflict tunisia.csv")

### Syria.  ####
cnfl_syr <- read.csv("conflict syria.csv")

### Sudan.  ####
cnfl_sdn <- read.csv("conflict sudan.csv")

### Somalia.  ####
cnfl_sml <- read.csv("conflict somalia.csv")

### Pakistan.  ####
cnfl_pkt <- read.csv("conflict pakistan.csv")

### Nigeria.  ####
cnfl_ngr <- read.csv("conflict nigeria.csv")

### Mali.  ####
cnfl_mal <- read.csv("conflict mali.csv")

### Iraq.  ####
cnfl_irq <- read.csv("conflict iraq.csv")

### Iran.  ####
cnfl_irn <- read.csv("conflict iran.csv")

### Egypt.  ####
cnfl_egy <- read.csv("conflict egypt.csv")

### Bangladesh.  ####
cnfl_bng <- read.csv("conflict bangladesh.csv")

### Algeria.  ####
cnfl_alg <- read.csv("conflict algeria.csv")

  
  # CLEAN DATA  ---------------
## Consider only conflict deaths from 2014 to 2019.

## Libya ####
## Transfrom data prec as date variable
cnfl_lby$date_help <- mdy_hms(cnfl_lby$date_prec)
## Subset for years 2014-2019
cnfl_lby_data <- cnfl_lby[which(cnfl_lby$relid > 2013), ]
## Inspect data conflict 
str(cnfl_data)

## Tunisia ###### 
## Transfrom data prec as date variable
cnfl_tns$date_help <- mdy_hms(cnfl_tns$date_prec)
## Subset for years 2014-2019
cnfl_tns_data <- cnfl_tns[which(cnfl_tns$relid > 2013), ]

## Syria ###### 
## Transfrom data prec as date variable
cnfl_syr$date_help <- mdy_hms(cnfl_syr$date_prec)
## Subset for years 2014-2019
cnfl_syr_data <- cnfl_syr[which(cnfl_syr$relid > 2013), ]

## Sudan ###### 
## Transfrom data prec as date variable
cnfl_sdn$date_help <- mdy_hms(cnfl_sdn$date_prec)
## Subset for years 2014-2019
cnfl_sdn_data <- cnfl_sdn[which(cnfl_sdn$relid > 2013), ]

## Somalia ###### 
## Transfrom data prec as date variable
cnfl_sml$date_help <- mdy_hms(cnfl_sml$date_prec)
## Subset for years 2014-2019
cnfl_sml_data <- cnfl_sml[which(cnfl_sml$relid > 2013), ]

## Pakistan ###### 
## Transfrom data prec as date variable
cnfl_pkt$date_help <- mdy_hms(cnfl_pkt$date_prec)
## Subset for years 2014-2019
cnfl_pkt_data <- cnfl_pkt[which(cnfl_pkt$relid > 2013), ]

## Nigeria ###### 
## Transfrom data prec as date variable
cnfl_ngr$date_help <- mdy_hms(cnfl_ngr$date_prec)
## Subset for years 2014-2019
cnfl_ngr_data <- cnfl_ngr[which(cnfl_ngr$relid > 2013), ]

## Mali ###### 
## Transfrom data prec as date variable
cnfl_mal$date_help <- mdy_hms(cnfl_mal$date_prec)
## Subset for years 2014-2019
cnfl_mal_data <- cnfl_mal[which(cnfl_mal$relid > 2013), ]

## Iraq ###### 
## Transfrom data prec as date variable
cnfl_irq$date_help <- mdy_hms(cnfl_irq$date_prec)
## Subset for years 2014-2019
cnfl_irq_data <- cnfl_irq[which(cnfl_irq$relid > 2013), ]

## Iran ###### 
## Transfrom data prec as date variable
cnfl_irn$date_help <- mdy_hms(cnfl_irn$date_prec)
## Subset for years 2014-2019
cnfl_irn_data <- cnfl_irn[which(cnfl_irn$relid > 2013), ]

## Egypt ###### 
## Transfrom data prec as date variable
cnfl_egy$date_help <- mdy_hms(cnfl_egy$date_prec)
## Subset for years 2014-2019
cnfl_egy_data <- cnfl_egy[which(cnfl_egy$relid > 2013), ]

## Bangladesh ###### 
## Transfrom data prec as date variable
cnfl_bng$date_help <- mdy_hms(cnfl_bng$date_prec)
## Subset for years 2014-2019
cnfl_bng_data <- cnfl_bng[which(cnfl_bng$relid > 2013), ]

## Algeria ###### 
## Transfrom data prec as date variable
cnfl_alg$date_help <- mdy_hms(cnfl_alg$date_prec)
## Subset for years 2014-2019
cnfl_alg_data <- cnfl_alg[which(cnfl_alg$relid > 2013), ]




# DEATHS BY MONTH AND YEAR. --------
#### Group by month and sum deaths.

#### Libya.  ####
cnfl_death_libya <- cnfl_lby_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_libya

#### Tunisia.  ####
cnfl_death_tunisia <- cnfl_tns_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_tunisia

#### Syria.  ####
cnfl_death_syria <- cnfl_syr_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_syria

#### Sudan.  ####
cnfl_death_sudan <- cnfl_sdn_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_sudan

#### Somalia.  ####
cnfl_death_somalia <- cnfl_sml_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_somalia

#### Pakistan.  ####
cnfl_death_pakistan <- cnfl_pkt_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_pakistan

#### Nigeria.  ####
cnfl_death_nigeria <- cnfl_ngr_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_nigeria

#### Mali.  ####
cnfl_death_mali <- cnfl_mal_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_mali

#### Iraq.  ####
cnfl_death_iraq <- cnfl_irq_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_iraq

#### Iran.  ####
cnfl_death_iran <- cnfl_irn_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_iran

#### Egypt.  ####
cnfl_death_egypt <- cnfl_egy_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_egypt

#### Bangladesh.  ####
cnfl_death_bangladesh <- cnfl_bng_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_bangladesh

#### Algeria.  ####
cnfl_death_algeria <- cnfl_alg_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_algeria




#  MERGE IN ONE. --------
##  Create a data frame of all countries conflict deaths. 
##  Group by month and sum deaths.

##  Combine all tibbles into one object 
combo = bind_rows(list("Algeria" = cnfl_death_algeria, 
                       "Bangladesh" = cnfl_death_bangladesh, 
                       "Egypt" = cnfl_death_egypt,
                       "Iran" = cnfl_death_iran,
                       "Iraq" = cnfl_death_iraq,
                       "Libya" = cnfl_death_libya,
                       "Mali" = cnfl_death_mali,
                       "Nigeria" = cnfl_death_nigeria,
                       "Pakistan" = cnfl_death_pakistan,
                       "Somalia" = cnfl_death_somalia,
                       "Sudan" = cnfl_death_sudan,
                       "Syria" = cnfl_death_syria,
                       "Tunisia" = cnfl_death_tunisia),
                  .id = "Country")
glimpse(combo)

##  Make it as data.frame
conflict_all <- as.data.frame(combo)

##  Reoder columns by name.
col_order <- c("year", "month", "Country",
               "tot_deaths")
conflict_all <- conflict_all[, col_order]
conflict_all

##  Subset conflict deaths for Libya only.
conflict_libya <- subset(conflict_all, conflict_all$Country == "Libya")

