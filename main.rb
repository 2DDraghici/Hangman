require './display'
require './game_logic'
require './text_content'
require './save_file'
require './saved_hangman'
require './hangman'
puts 'Welcome to the game of Hangman!'
puts 'Would you like to start a new game or load a save file?'
puts 'For new game type NEW'
puts 'For loading  a save file type LOAD'

input = gets.chomp.upcase
HangmanNew.new.play_game if input == 'NEW'
HangmanSaved.new.play_game if input == 'LOAD'
