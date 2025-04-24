library(tidyverse)

# Mystery data - forensic report with messy text format
forensic_report <- tibble(
  evidence_id = c("E001", "E002", "E003", "E004", "E005"),
  lab_results = c(
    "Blood Type: AB- | Time of Death: 21:45-22:15 | Cause: Blunt Force",
    "Blood Type: O+ | Fingerprints: Smudged | Trace: Wool Fibers",
    "Blood Type: AB- | Fingerprints: 83% match to CM | Trace: Red Thread",
    "No Blood | Fingerprints: 91% match to PP | Trace: None",
    "Blood Type: AB- | Time of Death: N/A | Trace: Cigar Ash"
  )
)

# Error code
parsed_reports <- forensic_report %>%
  mutate(
    blood_type = str_extract(lab_results, "Blood Type: ([A-Z]\\+|[A-Z]\\-|No Blood)"),
    fingerprints = str_extract(lab_results, "Fingerprints: ([\\w\\s%]+)"),
    trace = str_extract(lab_results, "Trace: ([\\w\\s]+)")
  ) %>%
  mutate(
    blood_type = str_remove(blood_type, "Blood Type: "),
    fingerprints = str_remove(fingerprints, "Fingerprints: "),
    trace = str_remove(trace, "Trace: ")
  ) %>%
  mutate(
    suspect_match = case_when(
      str_detect(fingerprints, "CM") ~ "Colonel Mustard",
      str_detect(fingerprints, "PP") ~ "Professor Plum",
      TRUE ~ NA_character_
    )
  ) %>%
  filter(blood_type == "AB-" & !is.na(suspect_match))


# Nothing is printed. Why is that?
# Hint - look at the blood type column after the first mutate