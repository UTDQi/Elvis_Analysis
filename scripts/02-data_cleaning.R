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
library(spotifyr)

#### Clean data ####
the_national <- readRDS("data/raw/the_national.rds")

Elvis_Presley = readRDS("data/raw/Elvis_Presley.rds")

Adele = readRDS("data/raw/Adele.rds")






#### Save data ####
write_csv(cleaned_data, "outputs/data/analysis_data.csv")
write_csv(table_month, "outputs/data/analysis_data_month.csv")
write_csv(table_year, "outputs/data/analysis_data_year.csv")

