puts "Which year is your car ?"

car = gets.chomp.to_i

if car > 2013
  puts "future"
elsif car.between?(2006, 2012)
  puts "new"
elsif car.between?(1995, 2005)
  puts "old"
else
  puts "very old"

end
