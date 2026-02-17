module Hangman
  module Save

    def save(game, save_name)
      game.name_save(save_name)
      $stdout = File.open("save_one.yml", "w") 
      puts YAML::dump(game)
      $stdout.close
      $stdout = STDOUT
    end

    def save_question
        puts "Would you like to save your game?"
        puts "y/n"
        save_choice= gets.chomp
        save_choice
    end
  end
end