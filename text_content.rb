module TextContent
  def initial_text
    puts
    puts 'You have to guess the word by introducing a letter.If the letter is correct,all of its positions will be revealed!'
  end

  def loss
    puts
    puts "You weren't able to decipher the word!"
  end

  def win
    puts
    puts 'Congratulations! You found the word!'
  end

  def used_letter
    puts 'You have already used that letter!'
    @turn -= 1
  end

  def introduce
    puts 'Please introduce a letter : '
  end

  def welcome
    puts 'Welcome to the game of Hangman!'
    puts 'Would you like to start a new game or load a save file?'
    puts 'For new game type NEW'
    puts 'For loading  a save file type LOAD'
  end
end
