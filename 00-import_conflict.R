
# IMPORT DATA --------
# Import all data related to conflict deaths.
# Source: Uppsala Conflict Data Program (Date of retrieval: 2021/02/03) 
#         UCDP Conflict Encyclopedia: www.ucdp.uu.se, Uppsala University.

# Load libraries.
library(haven)
library(dplyr)
library(ggplot2)
library(lubridate)

# Libya.  ####
cnfl_lby <- read.csv("conflict libya.csv")

# Tunisia.  ####
cnfl_tns <- read.csv("conflict tunisia.csv")

# Syria.  ####
cnfl_syr <- read.csv("conflict syria.csv")

# Sudan.  ####
cnfl_sdn <- read.csv("conflict sudan.csv")

# Somalia.  ####
cnfl_sml <- read.csv("conflict somalia.csv")

# Pakistan.  ####
cnfl_pkt <- read.csv("conflict pakistan.csv")

# Nigeria.  ####
cnfl_ngr <- read.csv("conflict nigeria.csv")

# Mali.  ####
cnfl_mal <- read.csv("conflict mali.csv")

# Iraq.  ####
cnfl_irq <- read.csv("conflict iraq.csv")

# Iran.  ####
cnfl_irn <- read.csv("conflict iran.csv")

# Egypt.  ####
cnfl_egy <- read.csv("conflict egypt.csv")

# Bangladesh.  ####
cnfl_bng <- read.csv("conflict bangladesh.csv")

# Algeria.  ####
cnfl_alg <- read.csv("conflict algeria.csv")

