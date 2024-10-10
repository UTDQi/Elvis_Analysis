#### Preamble ####
# Purpose: Downloads and saves the data from spotify
# Author: David QI
# Date: 10 October 2024
# Contact: david.qi@mail.utoronto.ca
# License: MIT
# Pre-requisites: None


#### Workspace setup ####
library(spotifyr)
library(tidyverse)
library(dplyr)

#### Download data ####
the_national <- get_artist_audio_features("the national")
saveRDS(the_national, "data/raw/the_national.rds")

Elvis_Presley <- get_artist_audio_features("Elvis Presley")
saveRDS(Elvis_Presley , "data/raw/Elvis_Presley.rds")

Adele <- get_artist_audio_features("Adele")
saveRDS(Adele , "data/raw/Adele.rds")


         
