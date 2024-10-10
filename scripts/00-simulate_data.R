#### Preamble ####
# Purpose: Simulates... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 19 Sep 2024
# Contact: david.qi@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# Any other information needed? 


#### Workspace setup ####
library(tidyverse)
library(tibble)

set.seed(304)

#### Simulate data ####
start_date <- as.Date("2011-01-01")
end_date <- as.Date("2024-08-01")
number_of_days = 100

sim_data <- tibble(
  date = as.Date(
    runif(
      n = number_of_days,
      min = as.numeric(start_date),
      max = as.numeric(end_date)
)
),
  num_of_marriage = rpois(100,10)
)

write_csv(data, "inputs/data/sim_data.csv") 