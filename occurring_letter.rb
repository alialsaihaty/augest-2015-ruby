#Find a way that will return the letter that occurred most in a given string. For instance if you give it: Hello it will give back the letter:l

puts "Please write any Word ?"

wor = gets.chomp
c = wor.length
d = c - 1
 while 0 < c
   f = wor.count(wor[d])
   puts f
   d -= 1
 end
˜
