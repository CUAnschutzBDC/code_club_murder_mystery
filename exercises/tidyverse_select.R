library(tidyverse)

# Mystery data
suspects <- tibble(
  name = c("Professor Plum", "Colonel Mustard", "Mrs. Peacock", "Miss Scarlet"),
  location = c("Library", "Kitchen", "Conservatory", "Lounge"),
  alibi = c(TRUE, FALSE, TRUE, FALSE),
  height_cm = c(175, 183, 165, 170)
)

# Error code
suspects %>%
  select(name, location, height_inches)