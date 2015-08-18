=begin my_array = [1,2,3]

my_array.each { |x| puts x * 3 }


my_array.map { |x| x * 3 }

------------------------------
my_array = ["ali", "aziz", "tam", "rayan", "turner"]

my_array.map! {|x| puts x.capitalize.reverse}
=end


print "Please enter any sentence :"

print gets.chomp.split.map! {|x| puts x.capitalize}.join(" ")
