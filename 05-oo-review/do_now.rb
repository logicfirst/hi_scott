require 'pry'
# A puppy is initialized with a cuteness score of 5.  A puppy can raise
# its cuteness score by 3 points if it gets groomed, and lower its score
# by 5 points playing in the mud.  

# The following code works, but there are some problems.  Refactor this code 
# to improve it.  (The code can be downloaded from your learn.co page under
# lecture 04)

class Puppy

    attr_reader :cuteness, :number_of_legs
    # attr_writer :name # def name=(new_name)
    attr_accessor :name # reader and writer together

    def initialize(name, number_of_legs=4)
        @name = name
        @cuteness = 5
        @number_of_legs = number_of_legs
        @species = "canine"
    end

    # def cuteness 
    #     return @cuteness
    # end

    def cuteness=(new_cuteness)
        @cuteness = new_cuteness.clamp(1, 10)
        # if @cuteness > 10
        #     @cuteness = 10
        # elsif @cuteness < 1
        #     @cuteness = 1
        # end
    end

    def cute?
        return self.cuteness > 5
    end

    # def name 
    #     return @name 
    # end

    # def cuteness
    #     return @cuteness 
    # end

    # def name=(new_name)
    #     @name = new_name
    # end

    # def number_of_legs
    #     return @number_of_legs
    # end

    def mutate
        @number_of_legs += 1
    end

    def play_in_the_mud
        self.cuteness -= 5
        # self.cuteness=(self.cuteness - 5)

    end

    def take_a_bath

        self.cuteness += 3 
        # self.cuteness=(self.cuteness + 3)
    end  

    def get_groomed
        self.cuteness += 4
    end
    
end


fido = Puppy.new("Fido")
binding.pry
puts fido.cuteness == 5 # test initial cuteness
fido.take_a_bath
puts fido.cuteness == 8 # test that take a bath raises cuteness by 3
fido.take_a_bath
puts fido.cuteness == 10 # test that cuteness cannot exceed 10
