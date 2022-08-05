module SaveFile
    def save_game
        save_file = File.new("save_file.txt","w")
        save_file.puts("#{@random_word}")
        save_file.puts("#{@initial_guess.join}")
        save_file.puts("#{@correct_letters.join}")
        save_file.puts("#{@wrong_letter.join}")
        save_file.puts("#{@turn}")
        save_file.close
        puts
        puts "You have saved the game!"
       


    end
end