puts "Please enter any sentence  "

sentence =gets.chomp

characters = sentence.chars

hash = Hash.new(0)


characters.each do |letter|
  hash[letter] += 1
end

puts hash

#by Ali
