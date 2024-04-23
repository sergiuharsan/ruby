a = [4,3,78,2,0,2]
def bubble_sort(array)
    loop do
      bool = false
      for i in 0..array.length-2
          if array[i]>array[i+1] then
              m = array[i]
              #temporary storing value of array[i] before swap
              array[i] = array[i+1]
              #swap the smaller value
              array[i+1] = m
              #swap the bigger value
              bool = true
              #swap has been made, need to go through the array again
          end
      end
    break if bool == false #no swap has been made so the array is sorted
    end
    puts "Bubble sorted array: #{array}"
end
bubble_sort(a)

