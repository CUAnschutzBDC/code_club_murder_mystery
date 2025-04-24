library(tidyverse)

# Mystery data
crime_timeline <- tibble(
  event_time = c("8:00 PM", "8:15 PM", "8:30 PM", "8:45 PM", "9:00 PM", "9:15 PM", "9:30 PM"),
  event = c("Dinner started", "Argument in dining room", "Victim left table", "Power outage", "Glass breaking", "Scream heard", "Body discovered"),
  witness = c("Everyone", "Mrs. White", "Colonel Mustard", "Everyone", "Mrs. Peacock", "Miss Scarlet", "Professor Plum"),
  importance = c(2, 4, 5, 3, 4, 5, 5)
)

# Convert to proper time format
crime_timeline <- crime_timeline %>%
  mutate(event_time = parse_time(event_time, format = "%I:%M %p"))

# Goal - filter to only key witnesses (identified by the max importance
# (max(importance))) and identify the time since the previous event
crime_timeline %>%
  mutate(time_since_previous = event_time - lag(event_time)) %>%
  group_by(witness) %>%
  mutate(
    importance_rank = rank(desc(importance)),
    is_key_witness = importance == max(importance)
  ) %>%
  ungroup() %>%
  filter(is_key_witness) %>%
  arrange(event_time) %>%
  select(event_time, event, witness, time_since_previous)
