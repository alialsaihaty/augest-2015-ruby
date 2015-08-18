#Given an array of words. Return back an array of numbers that contains the length of each word in the first array in the same order.

array = ["ALi" , "Hi" , "a" , "abc"]

#len = array.length

#ll = len - 1

#0..ll
ary = []
array.each do |word|
  y = word.length
  ary << y
  puts y
end

puts ary.join(" ")

#ALi
