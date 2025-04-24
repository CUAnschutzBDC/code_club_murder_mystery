library(tidyverse)

# Murder mystery evidence data
weapon_analysis <- tibble(
  weapon = c("Candlestick", "Knife", "Rope", "Revolver", "Wrench", "Lead Pipe"),
  fingerprint_score = c(0.85, 0.65, 0.42, 0.91, 0.73, 0.38),
  time_found = c("10:15 PM", "9:45 PM", "11:30 PM", "10:05 PM", "9:30 PM", "11:00 PM"),
  room = c("Library", "Kitchen", "Lounge", "Study", "Ballroom", "Conservatory")
)

# Error code
weapon_plot <- ggplot(weapon_analysis) +
  geom_col(aes(y = fingerprint_score)) +
  labs(title = "Fingerprint Evidence Analysis",
       x = "Weapon",
       y = "Fingerprint Match Score") +
  theme_minimal()

weapon_plot
