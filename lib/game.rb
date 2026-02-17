module Hangman
  
  class Game
    include Dictionary
    include Display
    include Save

    def initialize(word)
      @word = word
      @save_name = ""
      @word_array = @word.split("")
      @lives = 8
      @correct_letters = []
      @incorrect_letters = []
    end

    def word_array
      @word_array
    end

    def correct_letters
      @correct_letters
    end

    def lives
      @lives
    end

    def name_save(name)
      @save_name = name
    end
    
    def play_hangman
      turns_left(@lives)
      available_letter = false
      while available_letter == false
        letter = choose_a_letter
        if (@correct_letters.include?(letter) == true) || (@incorrect_letters.include?(letter) == true)
          puts "The letter has already been guessed"
          puts "Please choose another letter"
        else
          available_letter = true
        end
      end
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