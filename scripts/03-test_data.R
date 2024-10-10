#### Preamble ####
# Purpose: Downloads and saves the data from opendatatoronto
# Author: David QI
# Date: 19 Sep 2024
# Contact: david.qi@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# Any other information needed? 


#### Workspace setup ####
library(tidyverse)
# [...UPDATE THIS...]

#### Test data ####

sim_data = read.csv("inputs/data/sim_data.csv")
  
##test 1: for negative
  has_neg = !(sim_data$num_of_marriage |> min() > 0)
  
  
##test 2: test for NA
  has_NA = any(is.na(sim_data$num_of_marriage))

if(!has_NA && !has_neg){
  print("data have no nagative of NA. It have passed the tests.")
}else if(has_NA){
  print("data have NA entry/entries")
}else{
  print("data have negative entry/entries")
}



