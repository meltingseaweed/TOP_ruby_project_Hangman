module Hangman

  module Dictionary

    def read_dictionary
      dictionary = []
      IO.foreach("dictionary.txt", chomp:true) do |line|
        if (line.length > 5) && (line.length < 12)
          dictionary << line
        end
      end
      dictionary
    end
    
  end

end