module GameLogic
  def player_input
    input = gets.chomp.downcase
    if input == "save"
      save_game
      abort
    end
    input
  end
    

  def compare(word, input)
    used_letter if @correct_letters.include?(input) == true
    used_letter if @wrong_letter.include?(input) == true
    if word.include?(input) == true && @correct_letters.include?(input) == false
      split_word = word.split(//)
      @correct_letters.push(input)
      split_word.each_with_index { |letter, index| @initial_guess[index] = input if letter == input }
    end
    
    @wrong_letter.push(input) if word.include?(input) == false && @wrong_letter.include?(input) == false
  end

  
end
