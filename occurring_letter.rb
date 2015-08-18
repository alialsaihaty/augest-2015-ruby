#Find a way that will return the letter that occurred most in a given string. For instance if you give it: Hello it will give back the letter:l

puts "Please write any Word ?"

sentence = gets.chomp

#
characters = sentence.chars

hash = Hash.new(0)

characters.each do |letter|
  hash[letter] += 1
end

print hash.sortby {|k, v| v }
puts hash.sortby {|k, v| v }.last[0]






#a = letters.index('l')
#puts a





=begin
c = wor.length
d = c - 1
 while 0 < c
   f = wor.count(wor[d])
   puts f
   d -= 1
 end
˜
=end
