b = ()
a = Array(1..1000000)

d = a.sample

a << d

a.each do |x|
  if x == x
    
    puts "The duplicated Integer is: #{x}"
  else
    puts "There's no any number duplicated"
  end
end
