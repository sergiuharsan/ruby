 #Mastermind game player vs computer code generator
 require_relative './lib/board'

 game = Board.new
 step = 12
 game.code_generator
 while step > 0 do
  puts "Step #{step}, enter guess code: "
  game.code_guess
  game.check_code
  if game.check_win
    puts 'Congratulation! You Won!'
    break
  else
    puts "Guess code #{game.guess}"
    puts "Pegs: #{game.pegs}"
  end
  step -= 1
 end
  
  if step == 0
    puts 'You Lost!'
    puts "Code: #{game.code}"
  end
  
   


 
