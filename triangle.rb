#Write a method that takes a number N and then draw a triangle that has N number of letter O on each of its sides. For example given the number 5 your will get something like:

puts "Please enter any number "

num = gets.to_i



counter = 1
  until counter > num
    puts "#{" " * (num - counter)}#{'O '* counter }"
    counter +=1
  end

#
