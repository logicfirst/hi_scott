class Restaurant

    def initialize(name)
        @name = name
    end

    def name
        return @name 
    end

    def meals 
        # return @meals 
    end

    def add_meal(meal) # bk.add_meal(chicken)
        RestaurantMeal.new(self, meal)
    end

end