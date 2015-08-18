print "Give me a sentence : "

sentence = gets.chomp
b = sentence.split
c = []

b.each do |name|
  y = name.capitalize
  c << y
  puts y
end

puts c.join(" ")
