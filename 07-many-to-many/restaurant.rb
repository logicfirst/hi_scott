class Restaurant

    def initialize(name)
        @name = name
    end

    def name
        return @name 
    end

    def meals 
        # return @meals
        # look at all RestaurantMeals
        matching_rows = RestaurantMeal.all.select do |rm|
            # look at the restaurant column
            # choose the rows that have the 
            # restaurant we are looking for
            rm.restaurant == self
        end
        # take the meal from each row
        matching_rows.map do |row|
            row.meal 
        end

    end

    def add_meal(meal) # bk.add_meal(chicken)
        RestaurantMeal.new(self, meal)
    end

end