library(ggplot2)

data <- data.frame(
  suspect = c("Scarlet", "Mustard", "Green", "Plum"),
  alibi_quality = c(3, 5, 4, 2),
  crime_severity = c(1, 2, 4, 3)
)

ggplot(data, aes(x = suspect)) +
  geom_bar(aes(y = alibi_quality, fill = "Alibi Quality"), stat = "identity") +
  geom_bar(aes(y = crime_severity, fill = "Crime Severity"), stat = "identity")