
require 'pry'
require_relative "./restaurant.rb"
require_relative "./meal.rb"
require_relative "./restaurant_meal.rb"
# Build out these classes and methods so that a restaurant can track the meals it serves, 
# and a Meal knows all the restaurants where it is served.  e.g., if McDonalds and Burger King
# both serve hamburgers and chicken sandwiches, `mcdonalds.meals` would include both hamburgers
# and chicken sandwiches, and `hamburger.restaurants` would include both McDonalds and Burger King





mcd = Restaurant.new("McDonalds")
puts "Restaurant knows its name?"
puts mcd.name == "McDonalds"
bk = Restaurant.new("Burger King")

burger = Meal.new("Hamburger")
puts "Meal knows its name?"
puts burger.name == "Hamburger"

puts "Restaurant starts with no meals"
puts mcd.meals == []

mcd.add_meal(burger)
# mcd.add_meal("French Fries")
bk.add_meal(burger)

puts "Can add a meal to a restaurant"
puts mcd.meals == [burger]

chicken = Meal.new("Chicken Nuggets")
# mcd.add_meal(chicken)
# puts mcd.meals == [burger, chicken]

chicken.add_restaurant(mcd)
puts "Can add a Restaurant to a Meal"
puts chicken.restaurants == [mcd]

# chicken.restaurants=([mcd, bk])

binding.pry






# class Human

#     attr_reader :name, :eye_color, :foot_size
#     @@mammal = true
#     @@species = "homosapien"
#     @@carbon_based = true 

#     def initialize(name, eye_color, foot_size)
#         @name = name 
#         @eye_color = eye_color
#         @foot_size = foot_size
#     end
#     def self.is_mammal?
#         return @@mammal 
#     end
# end

# puts "******"
# puts Human.is_mammal?

# pat = Human.new("Pat", "blue", 8)
# puts pat.name
# puts pat.eye_color