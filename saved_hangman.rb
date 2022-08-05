require './display'
require './game_logic'
require './text_content'
require './save_file'
class HangmanSaved
  include Display
  include GameLogic
  include TextContent
  include SaveFile
  def initialize
    content = File.readlines('save_file.txt')
    @random_word = content[0]
    initial_text
    @turn = content[4].to_i
    @initial_guess = content[1].split

    @correct_letters = content[2].split
    @wrong_letter = content[3].split
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

