require_relative "croupier"

# TODO: make the user play from terminal in a while loop that will stop
#       when the user will not be asking for  a new card

puts "Card \"y\" or \"yes\" to get a new card"
input = gets.chomp

break if input != "y" || input != "yes"
