puts " PLease I need some information from you .."

personal_info = {}


print " First Name : "
personal_info["First name"] = gets.chomp
print " Last Name : "
personal_info["last name"] = gets.chomp
print " City of Birth : "
personal_info["city of birth"] = gets.chomp
print " Your age : "
personal_info["age"] = gets.to_i

personal_info.each do |k, v|
  puts "Your #{k} is #{v}"
end

#By Ali
