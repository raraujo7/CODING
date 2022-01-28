require_relative "compute_name"

# TODO: ask for the first name
puts "What is your first name ?"
first = gets.chomp

# TODO: ask for the middle name
puts "What is your middle name ?"
middle = gets.chomp

# TODO: ask for the last name
puts "What is your last name ?"
last = gets.chomp

# TODO: Print a greeting to the user with the full name concatenated,
#       something like "Hello, Boris Paillard"
user_name =  compute_name(first, middle, last)
puts "Hello, #{user_name}. Your name has got #{user_name.length} characters, including spaces."
