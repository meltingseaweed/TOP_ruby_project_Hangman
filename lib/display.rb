module Hangman
  
  module Display
    
    def turns_left(lives)
      heart = " \u2665 "
      puts ""
      puts "Remaining tries: #{lives}"
      lives.times { print heart }
      puts ""
    end
    
    def word_display(word_array, correct_letters)
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
    
    def incorrect_display(incorrect_letters, lives)
      print "incorrect letters already tried:"
      incorrect_letters.each { |letter| print " #{letter} "}
      2.times { puts ""}
      puts "----------------------".colorize(:green)
    end

    def choose_a_letter
      puts "Please choose a letter:"
      letter = gets.chomp
      letter
    end

  end
end