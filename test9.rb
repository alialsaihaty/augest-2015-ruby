my_array = [[1,2,3],[4,5,6],[7,8,9]]

puts my_array.flatten


my_array.flatten.each do |x|
  puts x
end


my_array.each {|x| x.each {|y| puts y }]
