require 'pry-byebug'
require 'colorize'
require 'yaml'
require 'psych'
# config.active_record.yaml_column_permitted_classes = [Symbol, Date, Time, Hangman::Game]

require_relative 'lib/display'
require_relative 'lib/load'
require_relative 'lib/save'
require_relative 'lib/read_dictionary'
require_relative 'lib/game'

include Hangman::Dictionary
include Hangman::Save
include Hangman::Load
include Hangman::Display


puts "Would you like to load the previous game?"
puts "y/n"
load = gets.chomp

if load == "y"
  game = load_game
  word_display(game.word_array, game.correct_letters)
elsif load == "n"
  dictionary = read_dictionary
  word = dictionary.sample
  game = Hangman::Game.new(word)
end

game.play_hangman

while game.lives > 0
        save_option = save_question
      if save_option == "y"
        save(game, "one")
      end
      game.play_hangman
end
puts "The game has finished"
