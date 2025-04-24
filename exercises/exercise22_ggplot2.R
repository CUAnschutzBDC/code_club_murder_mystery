library(tidyverse)

# Research study data with numbered experimental conditions
experiment_results <- tibble(
  lab_id = rep(c("Lab_A", "Lab_B", "Lab_C", "Lab_D"), each = 5),
  condition = rep(c("1_low_dose", "2_medium_dose", "5_high_dose", "10_max_dose", "20_mega_dose"), times = 4),
  treatment_group = rep(c("Control", "Treatment A", "Treatment B"), length.out = 20),
  response_value = c(12, 18, 25, 32, 45,  # Lab_A
                     15, 22, 28, 35, 48,  # Lab_B
                     10, 16, 24, 30, 42,  # Lab_C
                     14, 20, 27, 36, 50)  # Lab_D
)

# Make a plot, order the x axis by the dose (1, 2, 5, 10, 20)
experiment_plot <- ggplot(experiment_results, 
                          aes(x = condition, y = response_value, fill = treatment_group)) +
  geom_col(position = "dodge") +
  scale_fill_brewer(palette = "Set1") +
  facet_wrap(~lab_id) +
  labs(title = "Experimental Response by Condition",
       x = "Dosage Condition", 
       y = "Response Value") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

experiment_plot
