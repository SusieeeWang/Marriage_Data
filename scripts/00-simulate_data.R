#### Preamble ####
# Purpose: Simulates a dataset of the marriage dates of couples.
# Author: Susie Wang
# Date: 19 September 2024
# Contact: susiesuxian.wang@mail.utoronto.ca
# License: MIT
# Pre-requisites: sketch ideas

#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
# [...ADD CODE HERE...]
set.seed(304)
start_date <- as.Date("2023-01-01")
end_date <- as.Date("2023-12-31")
number_of_dates <- 100

data <-
  tibble(
    date = as.Date(runif(n = number_of_dates, min = as.numeric())),
    number_of_marriage = rpois(n = number_of_dates, lambda = 10)
  )
  
write_csv(data, "data/raw_data/simulated_data.csv")
  
