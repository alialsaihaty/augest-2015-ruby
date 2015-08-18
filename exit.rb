=begin
Keep asking user for input and add their input to an array until they type "exit".

After that print out the number of input they've entered. For example print:

You've entered 10 inputs



puts "Please input words as much as you want and when you are done enter exit"

words = gets.chomp
ary = Array.new
if words != "exit"
  ary.push(words)
  ary += ary
else
  print "The number of input they've entered is #{ary.length} "
end
=end

puts "Please input words as much as you want and when you are done enter exit"

ary = []
while user_input = gets.chomp
  if user_input != "exit"
    ary << user_input
  else
    print "The number of input they've entered is #{ary.length} "
  end
end
