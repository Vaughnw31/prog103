library(marinecs100b)
?kefj
kefj
# Review: write a function ------------------------------------------------

# P1 Describe succinctly what the following code does. This should be a
# high-level, one-sentence description, not a line-by-line breakdown.

site <- "Nuka_Pass"
season <- "Late winter"
n_cold <- sum(kefj_site == site &
                kefj_season == season &
                kefj_temperature <= -4 &
                kefj_exposure == "air")
n_total <- sum(kefj_site == site &
                 kefj_season == season)
hours_cold <- n_cold * 30 / 60
days_total <- n_total * 30 / 60 / 24
hours_cold_per_day <- hours_cold / days_total
hours_cold_per_day

#Finds the average hours per day that the logger is exposed to less than -4
#degrees in Nuka Pass in late winter when exposed to air only

# P2 Let's turn that code chunk into a function. What would you call that
# function? How many parameters should it take and what would you call them?
 avg_hrs_cold

# P3 Write a function to encapsulate the code chunk above. Check that it
# contains all five parts of a function.
 avg_hrs_cold <- function(site, season) {
   n_cold <- sum(kefj_site == site &
                   kefj_season == season &
                   kefj_temperature <= -4 &
                   kefj_exposure == "air")
   n_total <- sum(kefj_site == site &
                    kefj_season == season)
   hours_cold <- n_cold * 30 / 60
   days_total <- n_total * 30 / 60 / 24
   result <- hours_cold / days_total
   return(result)
 }
avg_hrs_cold("Nuka_Pass", "Late winter")

# Make an extreme choice --------------------------------------------------

# P4 Fill in the code below to create a logical vector indicating extreme
# temperatures.

extreme_type <- "cold"
if (is_extreme == "cold") {
  is_extreme <- (kefj_temperature <= -4)
} else if (extreme_type == "hot")
  is_extreme <- kefj_temperature >= 25
}

# P5 Copy-paste the code from P1 and edit it to incorporate the is_extreme
# vector into the extreme temperature exposure procedure.

n_cold <- sum(kefj_site == site &
                kefj_season == season &
                kefj_temperature <= -4 &
                kefj_exposure == "air")
n_total <- sum(kefj_site == site &
                 kefj_season == season)
hours_cold <- n_cold * 30 / 60
days_total <- n_total * 30 / 60 / 24
hours_cold_per_day <- hours_cold / days_total
hours_cold_per_day
if (is_extreme == "cold") {
  is_extreme <- (kefj_temperature <= -4)
} else if (extreme_type == "hot")
  is_extreme <- kefj_temperature >= 25
}
# P6 Copy-paste the function you wrote in P3 and edit it to add a parameter that
# lets you switch between extreme heat and cold exposure.

avg_hrs_cold <- function(site, season) {
  n_cold <- sum(kefj_site == site &
                  kefj_season == season &
                  kefj_temperature <= -4 &
                  kefj_exposure == "air")
  n_total <- sum(kefj_site == site &
                   kefj_season == season)
  hours_cold <- n_cold * 30 / 60
  days_total <- n_total * 30 / 60 / 24
  result <- hours_cold / days_total
  return(result)

# Season to taste ---------------------------------------------------------

# P7 What seasons are in the kefj dataset? What function would you use to
# identify them?
kefj_season
  Late winter Spring Summer Fall Early winter
# P8 Fill in the blanks below to make a for loop that prints the extreme hot and
# cold exposure across seasons at site Aialik.

seasons <- c("Late winter", "Spring", "Summer", "Fall", "Early winter")
  for (i in 1:length(seasons)) {
    heat_exposure <- hours_extreme_per_day(site, seasons[i], "hot")
    cold_exposure <- hours_extreme_per_day(site, seasons[i], "cold")
    print(paste("Aialik", seasons, heat_exposure, cold_exposure))
}

# P9 Copy-paste your answer to P8 and add a nested for loop to iterate across
# sites as well as seasons.
seasons <- c("Late winter", "Spring", "Summer", "Fall", "Early winter")
for (i in 1:length(seasons)) {
  for (j in 1:length(site)) {
  heat_exposure <- hours_extreme_per_day(site, seasons[i], "hot")
  cold_exposure <- hours_extreme_per_day(site, seasons[i], "cold")
  print(paste("Aialik", seasons, heat_exposure, cold_exposure))
  }

# P10 Examine your results from P9. You should find two outputs where both
# extreme heat and cold exposure were 0. What season were they in?
nuka bay fall and harris fall
