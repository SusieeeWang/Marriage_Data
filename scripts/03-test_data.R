#### Preamble ####
# Purpose: Tests the logistics and the structure of the dataset.
# Author: Susie Wang
# Date: 19 September 2024
# Contact: susiesuxian.wang@mail.utoronto.ca
# License: MIT
# Pre-requisites: Have the cleaned dataset prepared.


#### Workspace setup ####
library(tidyverse)

#### Test data ####
data <- read_csv("data/analysis_data/analysis_data.csv")

#Test for negative numbers
data$number_of_marriage |> min() <= 0

#Test for NAs
all(is.na(data$number_of_marriage))

