library(uniquify)

test_it <- function() {
  planets <- read.csv2("planets.csv", stringsAsFactors = FALSE)
  # planets_pipes <- read.csv2("planets2.csv", stringsAsFactors = FALSE)  # for bad data example
  # planets_factors <- read.csv2("planets.csv")  # for error example
  unique_climate <- uniquify::uniquify_vec(planets$climate)
  unique_climate
}
