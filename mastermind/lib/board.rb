class Board
  attr_accessor :code, :guess, :pegs

def initialize
  @pegs = Array.new(4," ")
  @code = Array.new(4,0)
  @guess = Array.new(4,0) 
end

def code_generator
 @code =  Array.new(4) {rand(1..8)}
end 

def code_guess
  @guess = gets.chomp.split.map(&:to_i)
  return @guess
end
def check_code
  k = 0
  @pegs = Array.new(4," ")
  temp_code = @code.clone
  temp_guess = @guess.clone

  for i in 0..3 do
   if temp_code[i] == temp_guess[i]
     @pegs[k] = 'red'
     temp_code[i] = 0
     temp_guess[i] = 0
     k += 1 
   end
  end
  for i in 0..3 do
    for j in 0..3 do
      if (temp_code[i] == temp_guess[j]) && (temp_code[i] != 0)
        @pegs[k] = 'white'
        temp_code[i] = 0
        temp_guess[j] = 0
        k += 1
      end
    end
  end
 return @pegs
end 

def check_win
  if @code == @guess
    true
  else
    false 
  end
end



end