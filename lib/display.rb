module Hangman
  
  module Display
    
    def turns_left(lives)
      heart = " \u2665 "
      puts ""
      puts "Remaining tries: #{lives}"
      lives.times { print heart }
      puts ""
    end
    # word = secret word
    # correct = an array of correct letters e.g. ["a", "c"]
    def word_display(word_array, correct_letters)
      # binding.pry
      display = ""
      word_array.each do |letter|
        if correct_letters.include?(letter)
          display += " #{letter} "
        else
          display += " __ "
        end
      end
      puts ""
      puts display
      2.times { puts "" }
    end
    # Takes in array of incorrect letters and shows along with hearts
    def incorrect_display(incorrect_letters, lives)
      # binding.pry
      print "incorrect letters already tried:"
      incorrect_letters.each { |letter| print " #{letter} "}
      2.times { puts ""}
      puts "----------------------".colorize(:green)
      # puts "Remaining tries: #{turns_left(lives)}"
    end

    def choose_a_letter
      puts "Please choose a letter:"
      letter = gets.chomp
      letter
    end

  end
end