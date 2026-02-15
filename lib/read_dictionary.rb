module Hangman

  module Dictionary

    def read_dictionary
      # Note, this will read and output, but be careful
      # of the SCOPE
      dictionary = []
      IO.foreach("dictionary.txt", chomp:true) do |line|
        if (line.length > 5) && (line.length < 12)
          dictionary << line
        end
      end
      dictionary
      # Do we need to close this IO stream?
    end

    # def select_word(dic)
    #   dictionary = read_dictionary
    #   dictionary.sample
    # end
    # Because it's using instance variables, will this method
    # need to be placed in the Hangman class?
  end

end