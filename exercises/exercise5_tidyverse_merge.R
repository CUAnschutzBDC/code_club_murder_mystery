library(tidyverse)

# Mystery data
suspects <- tibble(
  name = c("Professor Plum", "Colonel Mustard", "Mrs. Peacock", "Miss Scarlet"),
  occupation = c("Academic", "Military", "Socialite", "Actress")
)

alibis <- tibble(
  person = c("Professor Plum", "Mrs. Peacock", "Colonel Mustard", "Mr. Green"),
  alibi = c(TRUE, TRUE, FALSE, TRUE)
)

# Error code
suspects %>%
  left_join(alibis)