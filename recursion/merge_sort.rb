 def merge_sort(array)
   if array.length <= 1
     return array
   end
   middle = array.length / 2
   left = merge_sort(array[0...middle])
   right = merge_sort(array[middle..-1])
   merge(left, right)
 end
def merge(left, right)
  result = []
  while left.any? && right.any?
    if left.first < right.first
      result << left.shift
    else
      result << right.shift
    end
  end
  result + left + right
end

print "Enter array: "
array = gets.chomp.split(',').map(&:to_i)
p merge_sort(array)
