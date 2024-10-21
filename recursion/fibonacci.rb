
def fibs_rec(n)
  return [0] if n == 1
  return [0, 1] if n == 2
  fib_seq = fibs_rec(n-1)
  fib_seq << (fib_seq[-1] + fib_seq[-2])
  fib_seq
end

def fibs(n)
 fib_seq = Array.new
  for i in 0..n-1
   if i < 2
     fib_seq[i] = i
   else
     fib_seq[i] = fib_seq[i-1] + fib_seq[i-2]
   end
  end
 fib_seq
end

print 'Enter Fibonacci number: '
n = gets.chomp.to_i
puts "Recursive: #{fibs_rec(n)}"
puts "Iterative: #{fibs(n)}"
