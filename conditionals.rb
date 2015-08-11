#Write a code that will check if a given variables a is greater than 10 then it will print "Hello World". If it's greater than 100 it will print "Hello Universe". Otherwise it will do nothing.

puts "Please insert any number you like .."

num = gets.to_i

if num > 10
  puts "Hello World"
elsif num > 100
  puts "Hello Universe"
end
 
