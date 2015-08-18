puts "Please answer the following questions "

#hash = {firstname: , lastname: , age: , city:}

hash = Hash.new
city_hash = []

print " First Name : "
first_name = gets.chomp
hash["First Name"] = first_name
print " Last Name : "
last_name = gets.chomp
hash["Last Name"] = last_name
print " Your age : "
age = gets.to_i
hash["Age"] = age
print " Cities they've visited : "
while city = gets.chomp
  if city != "done"
    city_hash << city
    hash["City(s) visited"] = city_hash
  else
    puts "First Name: #{hash["First Name"]}"
    puts "____________"
    puts "Last Name: #{hash["Last Name"]}"
    puts "____________"
    puts "Age: #{hash["Age"]}"
    puts "____________"
    d = hash["City(s) visited"].join(", ")
    puts "City(s) visited: #{d}"
  end
end

#Ali
