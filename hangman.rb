require './display'
require './game_logic'
require './text_content'
require './save_file'
class HangmanNew
  include Display
  include GameLogic
  include TextContent
  include SaveFile
  def initialize
    content = File.readlines('google-10000-english-no-swears.txt')
    dictionary = content.select { |word| word.length > 5 && word.length <= 12 }
    @random_word = dictionary[rand(0..7350)]
    initial_text
    @turn = 1
    initial_display(@random_word)
    @random_word.gsub!("\n", '')
    @correct_letters = []
    @wrong_letter = []
    display_game_status
  end

  def play_game
    while @wrong_letter.length <= 12
      input = player_input
      compare(@random_word, input)
      @turn += 1
      display_game_status
      

      if @initial_guess.join('') == @random_word
        win
        break
      end
    end
    if @wrong_letter.length > 12
      loss
      puts @random_word
    end
  end
end

