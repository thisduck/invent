# This is a guess the number game.

guesses_taken = 0

puts 'Hello, what is your name?'
my_name = gets.chomp

number = rand(1..20)

puts 'Well, ' + my_name + ', I am thinking of a number between 1 and 20.'

while guesses_taken < 6 do
  puts "Take a guess:"
  guess = gets.chomp
  guess = guess.to_i

  guesses_taken = guesses_taken + 1

  if guess < number
    puts 'Your guess is too low.'
  end

  if guess > number
    puts 'Your guess is too high.'
  end

  if guess == number
    break
  end
end

if guess == number
  puts 'Good job, ' + my_name + '! You guessed my number in ' + guesses_taken.to_s + ' guesses!'
end

if guess != number
  puts 'Nope. The number I was thinking of was ' + number.to_s
end
