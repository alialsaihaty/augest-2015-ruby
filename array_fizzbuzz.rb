x = 1
array = []
while x < 101
  if x % 3 == 0 && x % 5 == 0
    array.push "FIZZBUZZ"
  elsif x % 3 == 0
    array.push "FIZZ"
  elsif x % 5 == 0
    array.push "BUZZ"
  else
    array.push x
  end
  x += 1
end

print array
