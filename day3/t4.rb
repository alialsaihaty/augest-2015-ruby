def sum(*numbers)
  print numbers
end


puts sum
puts sum 2,3,4,5
puts sum 4



def multiply(a, *b)
  result = a
  b.each {|x| result *= x}
  result
end

puts multiply(10,4,4)


def my_method
  puts "Hello"
  yield if block_given?
  puts "Bye"
end

my_method do
  puts ",,,,,,,,"
  puts "My name is Ali"
  puts ",,,,,,,,"
end
