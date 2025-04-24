library(tidyverse)

# Mystery data - suspect movements with timestamps
movements <- tibble(
  suspect = c("Mrs. Peacock", "Colonel Mustard", "Professor Plum"),
  `8:00 PM` = c("Dining Room", "Kitchen", "Study"),
  `9:00 PM` = c("Library", "Billiard Room", "Conservatory"),
  `10:00 PM` = c("Conservatory", "Lounge", "Library")
)

# Error code
movements_long <- movements %>%
  pivot_longer(cols = -suspect,
               names_to = "time",
               values_to = "room")

# Later in the code...
movements_long %>%
  filter(time >= "9:00 PM") %>%
  arrange(time)

# Is this the answer that you would expect? How can you get an 
# answer that meets your expectation?