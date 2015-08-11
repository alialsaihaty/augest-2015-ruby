puts " Give me a number: "

number = gets.to_i

if number > 10
  puts "Number is large"
elsif number > 5
  puts "Number is medium"
else
  puts "Number is small"
end
