

average_temperature_in_c = {vancouver: 13.7, edmonton: 8.5, Calgary: 10.5}
average_temperature_in_c.each do |k, v|
  v = v * 9/5 + 32
  print k, v

end

#by Ali
