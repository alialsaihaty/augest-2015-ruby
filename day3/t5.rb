puts "Please enter any word.."



def capital(a)
  if a.respond_to?(:capitalize) == true
    puts a.capitalize
  else
    puts "This input can't be capitalized"
  end
end

capital(121)
