
# CLEAN DATA  ---------------
# Consider only conflict deaths from 2014 to 2019.

# Libya ####
# Transfrom data prec as date variable
cnfl_lby$date_help <- mdy_hms(cnfl_lby$date_prec)
# Subset for years 2014-2019
cnfl_lby_data <- cnfl_lby[which(cnfl_lby$relid > 2013), ]
# Inspect data conflict 
str(cnfl_data)

# Tunisia ##### 
# Transfrom data prec as date variable
cnfl_tns$date_help <- mdy_hms(cnfl_tns$date_prec)
# Subset for years 2014-2019
cnfl_tns_data <- cnfl_tns[which(cnfl_tns$relid > 2013), ]

# Syria ##### 
# Transfrom data prec as date variable
cnfl_syr$date_help <- mdy_hms(cnfl_syr$date_prec)
# Subset for years 2014-2019
cnfl_syr_data <- cnfl_syr[which(cnfl_syr$relid > 2013), ]

# Sudan ##### 
# Transfrom data prec as date variable
cnfl_sdn$date_help <- mdy_hms(cnfl_sdn$date_prec)
# Subset for years 2014-2019
cnfl_sdn_data <- cnfl_sdn[which(cnfl_sdn$relid > 2013), ]

# Somalia ##### 
# Transfrom data prec as date variable
cnfl_sml$date_help <- mdy_hms(cnfl_sml$date_prec)
# Subset for years 2014-2019
cnfl_sml_data <- cnfl_sml[which(cnfl_sml$relid > 2013), ]

# Pakistan ##### 
# Transfrom data prec as date variable
cnfl_pkt$date_help <- mdy_hms(cnfl_pkt$date_prec)
# Subset for years 2014-2019
cnfl_pkt_data <- cnfl_pkt[which(cnfl_pkt$relid > 2013), ]

# Nigeria ##### 
# Transfrom data prec as date variable
cnfl_ngr$date_help <- mdy_hms(cnfl_ngr$date_prec)
# Subset for years 2014-2019
cnfl_ngr_data <- cnfl_ngr[which(cnfl_ngr$relid > 2013), ]

# Mali ##### 
# Transfrom data prec as date variable
cnfl_mal$date_help <- mdy_hms(cnfl_mal$date_prec)
# Subset for years 2014-2019
cnfl_mal_data <- cnfl_mal[which(cnfl_mal$relid > 2013), ]

# Iraq ##### 
# Transfrom data prec as date variable
cnfl_irq$date_help <- mdy_hms(cnfl_irq$date_prec)
# Subset for years 2014-2019
cnfl_irq_data <- cnfl_irq[which(cnfl_irq$relid > 2013), ]

# Iran ##### 
# Transfrom data prec as date variable
cnfl_irn$date_help <- mdy_hms(cnfl_irn$date_prec)
# Subset for years 2014-2019
cnfl_irn_data <- cnfl_irn[which(cnfl_irn$relid > 2013), ]

# Egypt ##### 
# Transfrom data prec as date variable
cnfl_egy$date_help <- mdy_hms(cnfl_egy$date_prec)
# Subset for years 2014-2019
cnfl_egy_data <- cnfl_egy[which(cnfl_egy$relid > 2013), ]

# Bangladesh ##### 
# Transfrom data prec as date variable
cnfl_bng$date_help <- mdy_hms(cnfl_bng$date_prec)
# Subset for years 2014-2019
cnfl_bng_data <- cnfl_bng[which(cnfl_bng$relid > 2013), ]

# Algeria ##### 
# Transfrom data prec as date variable
cnfl_alg$date_help <- mdy_hms(cnfl_alg$date_prec)
# Subset for years 2014-2019
cnfl_alg_data <- cnfl_alg[which(cnfl_alg$relid > 2013), ]