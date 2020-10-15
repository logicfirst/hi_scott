require_relative '../config/environment.rb'

# create your variables and/or write any tests here

petey = Tourist.new("Petey")
ella = Tourist.new("Ella")
puts "Tourist knows their name?"
puts petey.name == "Petey"
puts "Can get all tourists"
puts Tourist.all.include?(petey)

puts "Can find tourist by name"
puts Tourist.find_by_name("Ella") == ella

alamo = Landmark.new("Alamo", "San Antonio")
museum = Landmark.new("Museum of San Antonio", "San Antonio")
statue_of_liberty = Landmark.new("Statue of Liberty", "Liberty Island")

trip1 = Trip.new(petey, alamo)
trip2 = Trip.new(ella, alamo)
trip3 = Trip.new(petey, statue_of_liberty)

puts "Tourist knows their trips?"
puts petey.trips.include?(trip1)
puts petey.trips.include?(trip3)
puts !petey.trips.include?(trip2)

puts "Tourist knows their landmarks?"
puts petey.landmarks.include?(alamo)

puts "Can visit a new landmark"
ella.visit_landmark(statue_of_liberty)
puts ella.landmarks.include?(statue_of_liberty)

puts "can return never visited landmarks?"
puts ella.never_visited.include?(museum)

binding.pry
"hi"
