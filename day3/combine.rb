a_hash  = {:a => "123", :b => "345", :c => "678", :d => "910"}
a = []

a_hash.each do |k, v|
  c = k.to_s + v
  d = a << c
   end
   print a

#By ali 
