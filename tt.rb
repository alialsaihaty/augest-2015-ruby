x = 3
y = 5
counter = 1
 array = []
  while counter < 101
    if counter % x == 0 &&  counter % y == 0
     array << "FizzBuzz"
   elsif counter % x == 0
     array << "Fizz"
   elsif counter % y == 0
     array << "Buzz"
    else
     counter
    end
    counter += 1
  end
  puts array
