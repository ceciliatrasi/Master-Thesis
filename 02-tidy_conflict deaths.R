
# DEATHS BY MONTH AND YEAR. --------
# Group by month and sum deaths.

# Libya.  ####
cnfl_death_libya <- cnfl_lby_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_libya

# Tunisia.  ####
cnfl_death_tunisia <- cnfl_tns_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_tunisia

# Syria.  ####
cnfl_death_syria <- cnfl_syr_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_syria

# Sudan.  ####
cnfl_death_sudan <- cnfl_sdn_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_sudan

# Somalia.  ####
cnfl_death_somalia <- cnfl_sml_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_somalia

# Pakistan.  ####
cnfl_death_pakistan <- cnfl_pkt_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_pakistan

# Nigeria.  ####
cnfl_death_nigeria <- cnfl_ngr_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_nigeria

# Mali.  ####
cnfl_death_mali <- cnfl_mal_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_mali

# Iraq.  ####
cnfl_death_iraq <- cnfl_irq_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_iraq

# Iran.  ####
cnfl_death_iran <- cnfl_irn_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_iran

# Egypt.  ####
cnfl_death_egypt <- cnfl_egy_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_egypt

# Bangladesh.  ####
cnfl_death_bangladesh <- cnfl_bng_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_bangladesh

# Algeria.  ####
cnfl_death_algeria <- cnfl_alg_data %>% 
  mutate(year = year(date_help), 
         month = month(date_help)) %>% 
  group_by(year, month) %>% 
  summarise(tot_deaths = sum(best_est))
cnfl_death_algeria
