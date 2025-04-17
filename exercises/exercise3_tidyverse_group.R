library(tidyverse)

# Mystery data
witness_statements <- tibble(
  witness = c("Mrs. Peacock", "Colonel Mustard", "Mrs. White", "Professor Plum", "Mrs. White"),
  suspect_seen = c("Miss Scarlet", "Mrs. White", "Colonel Mustard", "Mrs. Peacock", "Mr. Green"),
  time = c("9:00 PM", "8:30 PM", "9:15 PM", "8:45 PM", "10:00 PM"),
  room = c("Library", "Kitchen", "Study", "Conservatory", "Billiard Room")
)

# Error code
witness_statements %>%
  group_by(witness) %>%
  summarize(count = n)