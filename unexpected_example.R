library(stringr)

# Separate, flatten, and trim values in the vector
clean <- function(vec) {
  values <- strsplit(vec, ",")
  flat_values <- unlist(values)
  trimmed_values <- str_trim(flat_values)
  trimmed_values
}

# Clean vector and get the unique values
uniquify <- function(vec) {
  clean_values <- clean(vec)
  unique_values <- unique(clean_values)
  unique_values
}

# Read data and get unique climate values
test_it <- function() {
  moar_planets <- read.csv2("moar_planets.csv", stringsAsFactors = FALSE)
  unique_climate <- uniquify(planets$climate)
  unique_climate
}

# test other columns; adjust code as needed



# values <- strsplit(vec, "\\, |\\,|\\|")
