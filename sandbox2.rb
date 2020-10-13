require 'pry'


class Car

    def initialize(color, make)
        @color = color 
        @make = make
        @number_of_wheels = 4
    end

    def check
        binding.pry
    end
end


ford = Car.new("Red", "Fiesta")

binding.pry