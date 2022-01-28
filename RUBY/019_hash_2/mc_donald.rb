DISHES_CALORIES = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Big Mac" => 540,
  "McChicken" => 350,
  "French Fries" => 230,
  "Salad" => 15,
  "Coca Cola" => 150,
  "Sprite" => 150
}

MENU_CALORIES = {
  "Happy Meal" => ["Cheese Burger", "French Fries", "Coca Cola"],
  "Best Of Big Mac"	=> ["Big Mac", "French Fries", "Coca Cola"],
  "Best Of McChicken"	=> ["McChicken", "Salad", "Sprite"]
}
def poor_calories_counter(burger, side, beverage)
  DISHES_CALORIES[burger] + DISHES_CALORIES[side] + DISHES_CALORIES[beverage]
end

def calories_counter(orders)
  # TODO: return number of calories for a less constrained order
  sum = 0
  orders.each do |x|
    if DISHES_CALORIES.key?(x)
      sum += DISHES_CALORIES[x]
    else
      sum += poor_calories_counter(MENU_CALORIES[x][0], MENU_CALORIES[x][1], MENU_CALORIES[x][2])
    end
    # one line solution with too many lines
    # DISHES_CALORIES.key?(x) ? sum += DISHES_CALORIES[x] : sum +=
    # poor_calories_counter(MENU_CALORIES[x][0],MENU_CALORIES[x][1],MENU_CALORIES[x][2])
  end
  sum
end
