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

#### Clean data ####
raw_data <- read_csv("inputs/data/raw_data.csv")

step1_data = separate(raw_data,"TIME_PERIOD",c("year","month"))

step2_data = lubridate::ym(raw_data$TIME_PERIOD)

step3_data = cbind(step1_data,step2_data)

names(step3_data)[6] = "Time"

cleaned_data = step3_data

before_month =  step3_data %>%
  filter(Time < as.Date("2024-01-01"))

table_month = step3_data %>%
  group_by(month) %>%
  summarize(total_marriage = sum(MARRIAGE_LICENSES))

table_year = step3_data %>%
  group_by(year) %>%
  summarize(total_marriage = sum(MARRIAGE_LICENSES))

#### Save data ####
write_csv(cleaned_data, "outputs/data/analysis_data.csv")
write_csv(table_month, "outputs/data/analysis_data_month.csv")
write_csv(table_year, "outputs/data/analysis_data_year.csv")

