module Display
  def initial_display(word)
    puts
    @initial_guess = Array.new(word.length-1, '_ ')
   
    puts
    
  end

  def display(word)
    word.each { |segment| print segment }
  end

  def display_used_letters
    print'Correct letters: '
    display(@correct_letters)
    puts
    print 'Wrong letters: '
    display(@wrong_letter)
    puts
  end

  def display_game_status
    puts 'Turn #' + @turn.to_s
    display_used_letters
    puts
    display(@initial_guess)
    puts
    introduce
  end
end
