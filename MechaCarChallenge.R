library(dplyr)
mechacar <- read.csv('MechaCar_mpg.csv')
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,mechacar)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,mechacar)) #summarize linear model

# suspension coils total summary
suspension <- read.csv('Suspension_Coil.csv')
total_summary = suspension %>% 
  summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI)) 

# suspension coils lot summary
lot_summary = suspension %>% 
  group_by(Manufacturing_Lot) %>% 
  summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# t test
t.test(PSI ~ 1, data = suspension, mu=1500)

t.test(PSI ~ 1, data = suspension, subset = (Manufacturing_Lot=="Lot1"), mu=1500)
t.test(PSI ~ 1, data = suspension, subset = (Manufacturing_Lot=="Lot2"), mu=1500)
t.test(PSI ~ 1, data = suspension, subset = (Manufacturing_Lot=="Lot3"), mu=1500)