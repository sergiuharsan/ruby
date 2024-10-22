class LinkedList

  def initialize
    @head = nil
  end

  def append(value)
    if @head.nil?
      @head = Node.new(value)
    else
      current = @head
      while current.next_node != nil
        current = current.next_node
      end
      current.next_node = Node.new(value)
    end
  end

  def prepend(value)
    if @head.nil?
      @head = Node.new(value)
    else
      new_head = Node.new(value)
      new_head.next_node = @head
      @head = new_head
    end
  end

  def size
    current = @head
    count = 0
    while current != nil
      count += 1
      current = current.next_node
    end
    count
  end

  def head
    @head
  end 

  def tail
    current = @head
    while current.next_node != nil
      current = current.next_node
    end
    current
  end

  def at(index)
    current = @head
    count = 0
    until count == index
      current = current.next_node
      count += 1
    end
    current
  end

  def pop
    current = @head
    if current.next_node == nil
      @head = nil
    else
      while current.next_node.next_node != nil
        current = current.next_node
      end
      current.next_node = nil
    end
  end

  def contains?(value)
    current = @head
    while current != nil
      return true if current.value == value
      current = current.next_node
    end
    false
  end

  def find(value)
    current = @head
    count = 0
    until current.value == value
      current = current.next_node
      count += 1
    end
    count
  end

  def to_s
    current = @head
    string = ""
    while current != nil
      string += "( #{current.value} ) -> "
      current = current.next_node
    end
    string += "nil"
    string
  end

  def insert_at(value, index)
    current = @head
    count = 0
    until count == index
      current = current.next_node
      count += 1
    end
    new_node = Node.new(value)
    new_node.next_node = current.next_node
    current.next_node = new_node
  end

  def remove_at(index)
    current = @head
    count = 0
    until count == index
      current = current.next_node
      count += 1
    end
    current.next_node = current.next_node.next_node
  end

end