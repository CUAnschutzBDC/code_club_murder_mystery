library(tidyverse)

# Mystery data 
evidence <- tibble(
  item = c("Knife", "Rope", "Candlestick", "Revolver", "Pipe"),
  location = c("Kitchen", "Library", "Ballroom", "Study", "Lounge"),
  fingerprints = c("Colonel Mustard", "Professor Plum", NA, "Mrs. White", NA),
  time_found = c("9:15 PM", "8:45 PM", "10:30 PM", "9:00 PM", "10:15 PM")
)

# Error code
evidence %>%
  filter(fingerprints = "Professor Plum")