class School

    def initialize(name)
        @name = name 
    end

    def name 
        return @name 
    end

end

flatiron = School.new("Flatiron School")
puts flatiron.name