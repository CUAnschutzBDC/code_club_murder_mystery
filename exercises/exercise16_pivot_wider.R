library(tidyverse)

# Mystery data - alibis for each suspect
alibis <- tibble(
  suspect = c("Colonel Mustard", "Mrs. Peacock", "Colonel Mustard", "Miss Scarlet"),
  room = c("Kitchen", "Conservatory", "Library", "Lounge")
)


# Error code
alibis %>%
  pivot_wider(names_from = room,
              values_from = alibi_time)
