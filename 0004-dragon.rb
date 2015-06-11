def display_intro
  puts 'You are in a land full of dragons. In front of you,'
  puts 'you see two caves. In one cave, the dragon is friendly'
  puts 'and will share his treasure with you. The other dragon'
  puts 'is greedy and hungry, and will eat you on sight.'
  puts ''
end

def choose_cave
  cave = ''
  while cave != '1' && cave != '2' do
    puts 'Which cave will you go into? (1 or 2)'
    cave = gets.chomp
  end

  cave
end

def check_cave(chosen_cave)
  puts 'You approach the cave...'
  sleep 2
  puts 'It is dark and spooky...'
  sleep 2
  puts 'A large dragon jumps out in front of you! He opens his jaws and...'
  puts ''
  sleep 2

  friendly_cave = rand(1..2)

  if chosen_cave == friendly_cave.to_s
    puts 'Gives you his treasure!'
  else
    puts 'Gobbles you down in one bite!'
  end
end

play_again = 'yes'

while play_again == 'yes' || play_again == 'y' do
  display_intro

  cave_number = choose_cave
  check_cave cave_number

  puts 'Do you want to play again? (yes or no)'
  play_again = gets.chomp
end
