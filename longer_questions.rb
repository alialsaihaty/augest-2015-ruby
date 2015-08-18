

questions = ["What is your name", "How are you?", "Is that right?", "Are you John?", "How is everything?"]

b = questions.select { |e| e.length > 15 }

puts b

#Ali
