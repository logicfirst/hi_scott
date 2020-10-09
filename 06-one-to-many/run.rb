require 'pry'
require_relative "./school.rb"
require_relative "./instructor.rb"

flatiron = School.new("Flatiron School", "1440 G St NW")
# puts flatiron.name # this is calling the .name method (function)

paul = Instructor.new("Paul Nicholsen")
matteo = Instructor.new("Matteo Ricci")

paul.join_school(flatiron)
matteo.join_school(flatiron)
# flatiron.add_instructor(paul)
# flatiron.add_instructor(matteo)

# print flatiron.instructors

bayside = School.new("Bayside High", "123 Fake St, Bayside CA")
testaverde = Instructor.new("Mr Testaverde")
shannon = Instructor.new("Shannon Nabors")

testaverde.join_school(bayside)
puts "School knows its name?"
puts flatiron.name == "Flatiron School"
puts "School knows its address?"
puts flatiron.address == "1440 G St NW"

puts "School.all knows all schools?"
puts School.all.include?(flatiron)

puts "School class can find by name"
puts School.find_by_name("Bayside High") == bayside 

puts "Instructor knows their school"
puts paul.school == flatiron

puts "Instructor can get their school's name"
puts paul.school_name == "Flatiron School"
puts testaverde.school_name == "Bayside High"

flatiron.add_instructor(shannon)
binding.pry
puts shannon.school == flatiron