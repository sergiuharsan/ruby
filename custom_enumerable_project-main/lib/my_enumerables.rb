module Enumerable
  # Your code goes here
  def my_each_with_index
    index = 0
    for element in self
      yield element, index
      index += 1
    end
  end
  def my_select
    array = []
    for element in self
      array << element if yield element
    end
    array
  end

  def my_all
    for element in self
      return false unless yield element
    end
    true
  end
  def my_any
    for element in self
      return true if yield element
    end
    false
  end
  def my_none  
    for element in self
      return false if yield element
    end
    true
  end

  def my_count
    count = 0
    if block_given? 
    for element in self
      count += 1 if yield element
    end
    else
      count = self.size
    end
    count
  end

  def my_inject(initial_value)
    accumulator = initial_value
    self.each do |element|
      accumulator = yield accumulator, element  
    end
    accumulator
  end
  
  def my_map
    array = []
    self.each do |element|
      array << yield(element)
    end
    array
  end

end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for element in self
      yield element
    end
  end
end
