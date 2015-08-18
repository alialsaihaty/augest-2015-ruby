require 'active_support/all'

puts "write some names"

names = gets.chomp.split(",")

number_of_teams = gets.to_i

splitting = names.in_groups(number_of_teams, false).to_a

print splitting
