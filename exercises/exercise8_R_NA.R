# 👻 Exercise 8: The Invisible NA 👻
# The suspect had no alibi… but their record was ignored anyway.

evidence <- data.frame(
  suspect = c("Plum", "Scarlet", "Green"),
  fingerprints = c(TRUE, FALSE, NA)
)

subset <- evidence[evidence$fingerprints == FALSE, ]
print(subset)