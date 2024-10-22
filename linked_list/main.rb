require './lib/node.rb'
require './lib/linked_list.rb'

list = LinkedList.new
list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turrle') 
puts list
list.pop
puts list
list.prepend('fish')
puts list
list.remove_at(2)
puts list
list.insert_at('rabbit', 2)
puts list
puts list.at(2)
puts list.contains?('hamster')
puts list.find('snake')
