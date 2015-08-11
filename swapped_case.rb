#Take a string a find a way to display each character on a new line with its case swapped so if I give: Hello I will get:
#h
#E
#L
#L
#O

puts "Please write any word ..."

word = gets.chomp

word_swap = word.swapcase

puts word_swap.each_char {|letters| puts letters}
