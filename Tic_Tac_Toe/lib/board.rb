class Board
  # Board class containing all the modules for the game
  attr_accessor :board

  def initialize
    @board = Array.new(3) { Array.new(3, ' ') }
  end

  def draw_board
    # Display the board
    (0..2).each do |i|
      (0..2).each do |j|
        print "| #{@board[i][j]} |"
      end
      print "\n"
    end
  end

  def update_board(x, y, play)
    # Update the board
    @board[x][y] = play
  end

  def check_win
    # Check if there is a winner
    (0..2).each do |i|
      return @board[i][0] if @board[i][0] == @board[i][1] && @board[i][1] == @board[i][2] && @board[i][0] != ' '
    end
    (0..2).each do |i|
      return @board[0][i] if @board[0][i] == @board[1][i] && @board[1][i] == @board[2][i] && @board[0][i] != ' '
    end
    return @board[0][0] if @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2] && @board[0][0] != ' '
    return @board[0][2] if @board[0][2] == @board[1][1] && @board[1][1] == @board[2][0] && @board[0][2] != ' '

    0
  end

  def check_draw
    # Check if the game is a draw
    if @board.all? { |row| row.all? { |cell| cell != ' ' } }
      true
    else
      false
    end
  end

  def turn(play)
    # Input coordinates validation, reask until valid input
    while true
      while true
        input = gets.chomp
        next unless input =~ /^\d(,\d)?$/

        x, y = input.chomp.split(',').map(&:to_i)
        break if x.between?(0, 2) && y.between?(0, 2)

        puts 'Invalid coordinates, eg 0,0; 0,1...'
      end
      # Check if position is taken if not update position
      if @board[x][y] == ' '
        update_board(x, y, play)
        break
      else
        puts 'Position taken, try again!'
      end
    end
  end
end
