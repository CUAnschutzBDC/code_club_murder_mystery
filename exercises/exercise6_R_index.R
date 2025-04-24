# 🎯 Exercise 6: The Index Impersonator 🎯
# A number posed as an index… but pointed to the wrong suspect.

suspects <- c("Colonel Mustard", "Professor Plum", "Miss Scarlet", "Mr. Green")
alibis <- c(
  "Was polishing the candlestick in the library",
  "Was grading stats exams in the lounge",
  "Was rehearsing her monologue in the study",
  "Was watering plants in the conservatory"
)

suspect <- suspects[0]
suspect_alibi <- alibis[0]

cat("Suspect:", suspect, "\n")
cat("Alibi:", suspect_alibi, "\n")