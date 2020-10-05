require 'pry'
# linters


instructors = [
    {name: "Paul", role: "lead"},
    {name: "Matteo", role: "coach"},
    {name: "Shannon", role: "coach"},
    {name: "Mansour", role: "coach"}
]

# iterable: something you can iterate over (i.e. do the same thing for every element)

# .each
instructors.each do |instructor|
    puts instructor[:name]
end

# .map - returns a new array of the return value of the block for each element in the iterable

names = instructors.map do |instructor|
    instructor[:name]
end

names.each do |instructor_name|
    puts "My name is #{instructor_name}"
end

# .find - returns first element that matches a condition
# .select - returns array of all elements that match a condition

single_coach = instructors.find do |instructor|
    instructor[:role] == "coach" # evaluates to T or F
end

puts single_coach

all_coaches = instructors.select do |instructor|
    instructor[:role] == "coach"
end

coach_names = all_coaches.map do |coach|
    coach[:name]
end

print coach_names

coach_names_with_each = []
instructors.each do |instructor|
    if instructor[:role] == "coach"
        coach_names_with_each << instructor[:name]
    end
end
print coach_names_with_each


# all_leads = instructors.select do |instructor|
#     instructor[:role] == "lead"
# end

# print all_leads


