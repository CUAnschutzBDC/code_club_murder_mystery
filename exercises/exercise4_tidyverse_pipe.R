library(tidyverse)

# Mystery data
timeline <- tibble(
  time = c("8:00 PM", "8:30 PM", "9:00 PM", "9:30 PM", "10:00 PM"),
  event = c("Dinner started", "Argument heard", "Glass breaking", "Scream", "Body discovered"),
  witness = c("Everyone", "Mrs. White", "Colonel Mustard", "Mrs. Peacock", "Professor Plum")
)

# Error code
timeline
  filter(time >= "9:00 PM") %>%
  arrange(time)
