#Write a code that takes an array and then returns another array that contains all the numbers that are greater than 10. The code should not fail if the array contains strings / non-number elements. for example, this array:


my_array = [1,4,5,23,14,"Hello there", false, nil]
my_array.reject{ |e| e == nil }
my_array.reject{ |e| e == (Boolean) }
b = my_array.select { |a| a.to_i > 10 }

puts b



=begin
ary = []
puts my_array.any?{|v| v > 10}

if my_array.any?{|v| v > 10} == "ture"
  ary << v
  puts ary
else
  puts ary
end
=end
