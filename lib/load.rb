module Hangman

  module Load
    def load_game
    object = Psych.safe_load_file('save_one.yml', permitted_classes: [Game])
    object # Will output the object of the loaded save (Top one only)
    end
  end
end