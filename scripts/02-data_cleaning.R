#### Preamble ####
# Purpose: Cleans the raw marriage dataset for analysis.
# Author: Susie Wang
# Date: 19 September 2024
# Contact: susiesuxian.wang@mail.utoronto.ca
# License: MIT
# Pre-requisites: Have simulated raw dataset prepared.

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_marriage_data <- read_csv("data/raw_data/raw_marriage_data.csv")

cleaned_data <-
  raw_marriage_data |>
  janitor::clean_names() |>
  separate(col = time_period, into = c("year", "month"),
            sep = "-") |>
  mutate(date = lubridate::ymd(paste(year, month, "01", sep = "-")))

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
