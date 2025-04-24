library(ggplot2)

data <- data.frame(
  suspect = c("Scarlet", "Mustard", "Green", "Plum"),
  alibi_quality = c(3, 5, 4, 2),
  crime_type = c("Fraud", "Theft", "Murder", "Theft")
)

ggplot(data, aes(x = crime_type, y = alibi_quality)) +
  geom_bar(stat = "identity")#