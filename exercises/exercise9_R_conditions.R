# ☠️ Exercise 9: The Cursed Condition ☠️
# An assignment slipped into a condition… and silently passed.

weapon <- "candlestick"

# The detective thought this was a comparison...
# But a single character changed everything.
if (weapon = "knife") {
  print("🔪 It's the knife! We found the murder weapon!")
} else if (weapon == "candlestick") {
  print("🕯️ It's the candlestick, obviously.")
} else {
  print("🕵️ Something else must have done it...")
}
