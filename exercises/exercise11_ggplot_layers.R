library(ggplot2)

data <- data.frame(
  suspect = c("Scarlet", "Mustard", "Green", "Plum"),
  alibi_quality = c(3, 5, 4, 2)
)

ggplot(data, aes(x = suspect, y = alibi_quality))