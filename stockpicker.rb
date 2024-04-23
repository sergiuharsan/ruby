a = [17,3,6,9,15,8,6,1,10]
def stock_picker(stock)
    max_profit = 0
    pair = []
#looping through array and finding max profit
#first loop goes from begining till last -1 (need to buy first)
# second loop from current position + 1 till last
for i in 0..stock.length-2 do
  for j in i+1..stock.length-1 do
      if stock[j] - stock[i] > max_profit then
          max_profit = stock[j] - stock[i]
          pair = [i, j]
      end
  end
end
puts "Pair #{pair} for a profit of: #{max_profit}"
end
stock_picker(a)
