#Write some code that keeps asking use for book names until the user enters "exit". After typing exit the program should display all the entered book names sorted.


puts "Hi there..."
puts "Please kindly enter a list of your favorite books.. When you are done please type exit"

books = []




while get_books = gets.chomp
  if get_books != "exit"
    books << get_books
  else
    puts "The list of your favorite books is: "
    books.each do |x|
      puts x
    end
    puts "Click Control-C to Exit"
  end
end


#By Ali
