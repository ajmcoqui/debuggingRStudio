library(tidyverse)

clean <- function(vec) {
  values <- strsplit(vec, ",")
  # values <- strsplit(vec, "\\, |\\,|\\|")  for planets2
  flat_values <- unlist(values)
  trimmed_values <- str_trim(flat_values)
  trimmed_values
}

uniquify <- function(vec) {
  clean_values <- clean(vec)
  unique_values <- unique(clean_values)
  unique_values  # could comment this out and dig into unique() while debugging
}

test_it <- function() {
  planets <- read.csv2("planets.csv", stringsAsFactors = FALSE)
  # planets_pipes <- read.csv2("planets2.csv", stringsAsFactors = FALSE)  # for bad data example
  # planets_factors <- read.csv2("planets.csv")  # for error example
  unique_climate <- uniquify(planets$climate)
  unique_climate
}

# test other columns; adjust code as needed
