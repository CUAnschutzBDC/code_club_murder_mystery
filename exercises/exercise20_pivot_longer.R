library(tidyverse)

# Mystery data - physical evidence measurements
evidence_measurements <- tibble(
  item = c("Knife", "Rope", "Candlestick", "Revolver", "Pipe"),
  length_cm = c(15.2, 184.7, 22.5, 18.3, 19.8),
  weight_g = c(120.5, 350.2, 980.0, 650.5, 310.8),
  blood_present = c(TRUE, FALSE, TRUE, FALSE, FALSE),
  fingerprint_clarity = c(0.75, 0.30, 0.10, 0.90, 0.50)
)

# Error code
evidence_measurements %>%
  mutate(across(where(is.numeric), ~ ifelse(. > mean(., na.rm = TRUE), "Above Average", 
                                            "Below Average"))) %>%
  pivot_longer(
    cols = -item,
    names_to = "measurement",
    values_to = "value"
  ) %>%
  filter(value == "Above Average") %>%
  count(item, sort = TRUE) %>%
  mutate(suspicion_level = case_when(
    n >= 3 ~ "High",
    n == 2 ~ "Medium",
    TRUE ~ "Low"
  ))


# Note pivot longer can combine multiple columns into one, but
# data frames require that all values in one column are the same type