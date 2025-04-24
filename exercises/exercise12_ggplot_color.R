library(ggplot2)

data <- data.frame(
  suspect = c("Scarlet", "Mustard", "Green", "Plum"),
  alibi_quality = c(3, 5, 4, 2),
  suspect_color = c("red", "yellow", "green", "purple")
)

ggplot(data, aes(x = suspect, y = alibi_quality, color = suspect_color)) +
  geom_point()