
# MERGE IN ONE. --------
# Create a data frame of all countries conflict deaths. 
# Group by month and sum deaths.

# Combine all tibbles into one object 
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

# Make it as data.frame
conflict_all <- as.data.frame(combo)

# Transpose columns and rows.
conflict_transpose <- as.data.frame(t(as.matrix(combo)))
conflict_transpose
