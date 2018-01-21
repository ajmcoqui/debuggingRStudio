library(tidyverse)

clean <- function(vec) {
  values <- strsplit(vec, ",")
  # values <- strsplit(vec, "\\, |\\,|\\|")
  flat_values <- unlist(values)
  trimmed_values <- str_trim(flat_values)
  trimmed_values
}

uniquify <- function(vec) {
  clean_values <- clean(vec)
  unique_values <- unique(clean_values)
  unique_values
}

test_it <- function() {
  planets <- read.csv2("planets.csv", stringsAsFactors = FALSE)
  # planets <- read.csv2("planets2.csv", stringsAsFactors = FALSE)  # for bad data example, pipes
  # planets <- read.csv2("planets.csv")  # for error example, factors
  unique_climate <- uniquify(planets$climate)
  unique_climate
}

# test other columns; adjust code as needed
