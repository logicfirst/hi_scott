#############################################################################
# For each of the following examples, write *two* methods that solve the    #
# problem:  One that uses `.each` and one that uses one of the higher level #
# iterator methods                                                          #
#############################################################################

# Remember:

# map/collect:  Returns an array where each value of the original array 
# corresponds to an element in the new array

# find/detect:  Returns the _first_ element for which the statement in the block
# evaluates as True

# select/find_all:  Returns an array of _all_ elements for which the statement in
# the block evaluates as True

nums = (1..20).to_a #creates an array of all numbers from 1-20

# 1.  Create an array of numbers where each new number is three times as big as
# its original number (e.g., [3, 6, 9])
times_three = nums.map {|num| num * 3}

# print times_three

# 2.  Find the first number that is divisible by 7
divis_by_7 = nums.find do |num|
    num % 7 == 0
end


# 3.  Find all numbers that are divisible by 7

divis_by_7 = nums.select do |num|
    num % 7 == 0
end


# 4.  Find the first number that is divisible by 7 AND greater than 10
# big_divisible = nums.find do |number|
#     number % 7 == 0 && number > 10 
# end

# print big_divisible

divis_by_7.find do |num|
    num > 10
end

# Bonus:


# 5.  Create an array of the squares (the number times itself) of all numbers
# that are divisible by 7

seven_squares = nums.select do |num|
   num % 7 == 0
end.map do |num|
    num ** 2
end

squares = []
nums.each do |num|
    if num % 7 == 0 
        squares << num ** 2
    end
end

print seven_squares