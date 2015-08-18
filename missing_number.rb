
#this will gemetrate an array
numbers = Array (1..1000000)

# here we are taking a number from the array above and we adding again to itself so then we have one repeated element within the array
numbers << numbers.sample
#

frequencies = Hash.new(0)

numbers.each do |number|
  if frequencies[number] == 0
    frequencies[number] += 1
    else
      puts "#{number} is repeated"
      break
  end
end
