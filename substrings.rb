def substrings(string, dictionary)
    string.downcase!
    hash = Hash.new
    dictionary.each do |word|
        if string.scan(word.downcase).size != 0 then
            hash[word] = string.scan(word).size
        end
    end
    puts hash
end

puts "Enter string: "
str = gets
puts "Enter dictionary (comma separatted): "
dic = gets.chomp.split(', ')
substrings(str, dic)

