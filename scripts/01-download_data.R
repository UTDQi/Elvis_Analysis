#### Preamble ####
# Purpose: Downloads and saves the data from opendatatoronto
# Author: David QI
# Date: 19 Sep 2024
# Contact: david.qi@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# Any other information needed? 


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)

#### Download data ####
marriage_licence_packages <- search_packages("Marriage Licence Statistics")

marriage_licence_resources <- marriage_licence_packages %>%
  list_package_resources()

the_raw_data <-  marriage_licence_resources$id[1] %>%
  get_resource()



#### Save data ####
write_csv(the_raw_data, "inputs/data/raw_data.csv") 

         
