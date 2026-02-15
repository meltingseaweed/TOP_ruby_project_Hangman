module Hangman
  
  class Game
    include Dictionary
    include Display

    def initialize(word)
      @word = word
      @word_array = @word.split("")
      @lives = 8
      @correct_letters = []
      @incorrect_letters = []
    end

    def lives
      @lives
    end
    
    def play_hangman
      turns_left(@lives)
      letter = choose_a_letter
      puts "You chose the letter: #{letter}".colorize(:green)
      if (@word_array.include?(letter))
        @correct_letters << letter
      else 
        @incorrect_letters << letter
        @lives -= 1
      end
      word_display(@word_array, @correct_letters)
      incorrect_display(@incorrect_letters, @lives)
      if (@word_array.uniq.length == @correct_letters.length)
        puts "You did it!".colorize(:green)
        puts "The answer was #{@word}"
        @lives = 0
      end
    end
  
  end
end