# (5..15) Range
#for number in 5..15
#  puts number
#end


puts "Plese input any number ..."

num = gets.to_i

if num < 100
  for number in num..100
    puts number
  end
  else
    puts num
end
