
# DATASETs ------
View(conflict_libya)
View(oil_final)
View(ar_dt)

# JOIN  ------
# Join conflicts, oil production and arrivals & deaths data on columns year and month.
aa <- merge(x =ar_dt, y = oil_final, by = "year", all.x = TRUE)
bb <- ar_dt %>% left_join(oil_final, by = c("year", "month"))
cc <- bb %>% left_join(conflict_libya, by = c("year", "month"))
cols.dont.want6 <- c("Country")
cc <- cc[, ! names(cc) %in% cols.dont.want6, drop = F]

# MARE NOSTRUM -----
# Create event equal to Mare Nostrum.
# Note that by starting from 2014 and assuming the un-official end of Mare Nostrum as end date, 
# the operation is assumed to last for the whole year 2014 only.
cc$mare_nostrum[cc$year == 2014] <- 1 # Equal to 1 during Mare Nostrum.
cc$mare_nostrum[cc$year > 2014] <- 0 # Equal to 0 after Mare Nostrum.
cc$mare_nostrum <- as.numeric(cc$mare_nostrum)


# Save as .csv
write.csv(cc, file = "final.csv", row.names = TRUE)
