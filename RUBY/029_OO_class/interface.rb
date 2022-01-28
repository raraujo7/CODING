require_relative "restaurant"

first_rest = Restaurant.new("Churrasco", "Brazilian")
second_rest = Restaurant.new("USBurguer", "American")
puts first_rest.love
puts second_rest.love
