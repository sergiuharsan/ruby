# Tic-Tac_toe game player vs player
# Author: Sergiu Harsan

require_relative './lib/board'
require_relative './lib/player'

board = Board.new

puts 'Enter player1 name: '
player1 = Player.new(gets.chomp)
puts 'Enter player2 name: '
player2 = Player.new(gets.chomp)
board.draw_board
puts 'Game start!'
puts 'Enter coordinates: 0,0; 0,1; 0,2; 1,0; 1,1; 1,2; 2,0; 2,1; 2,2'
puts '0,0 is in top left corner!'
puts 'Good Luck!'
current_player = 'X'

loop do
  case current_player
  when 'X'
    puts "#{player1.name}\'s turn"
  when 'O'
    puts "#{player2.name}\'s turn"
  end

  board.turn(current_player)
  board.draw_board
  if board.check_draw
    puts 'Draw!'
    break
  end
  
  case board.check_win
  when 'X'
    puts "#{player1.name} won!"
    break
  when 'O'
    puts "#{player2.name} won!"
    break
  end

  current_player = current_player == 'X' ? 'O' : 'X'

end
