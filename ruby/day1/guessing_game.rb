# Bonus problem: if you're feeling the need for a little more, write a program that picks a random number.
# Let a player guess the number, telling the player whether the guess is too low or too high.

answer = rand(10)

puts 'Guess a number from 0 to 9:'

loop do
  guess = (gets).to_i
  if guess > answer then puts 'Too high, guess again:'
  elsif guess < answer then puts 'Too low, guess again:'
  else break end
end

puts 'Wow, you did it'
