answer := (Random value(99) + 1) ceil

"Guess a number from 1-100: " print

10 repeat(
  guess := File standardInput readLine asNumber

  if(guess > answer) then(
    "Too high, guess again: " print
  ) elseif(guess < answer) then(
    "Too low, guess again: " print
  ) else(
    "You win!" println; return
  )
)

"Sorry, you ran out of tries and lost" println
