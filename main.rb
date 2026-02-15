require 'pry-byebug'
require 'colorize'

require_relative 'lib/display'
require_relative 'lib/load'
require_relative 'lib/save'
require_relative 'lib/read_dictionary'
require_relative 'lib/game'

include Hangman::Dictionary

puts "Let's try!"
# binding.pry
dictionary = read_dictionary
word = dictionary.sample
game = Hangman::Game.new(word)

while game.lives > 0
  game.play_hangman
end
puts "The game has finished"
