# 📇 Exercise 10: The Unsorted Alibi 📇
# Their stories didn’t match—but R didn’t notice.

names <- c("Miss Scarlet", "Professor Plum", "Mr. Green")
crimes <- c("Fraud", "Theft", "Murder")
criminals <- data.frame(names, crimes)

lookup <- c("Professor Plum", "Mr. Green", "Miss Scarlet")
crime_lookup <- criminals[lookup, "crimes"]

print(crime_lookup)