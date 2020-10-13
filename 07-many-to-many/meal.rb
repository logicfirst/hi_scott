class Meal

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def add_restaurant(restaurant) 
        # burger.add_restaurant(mcd)
        x = RestaurantMeal.new(restaurant, self)
    end

    def restaurants
        RestaurantMeal.all.select do |row|
            row.meal == self 
        end.collect do |row| # same as map
            row.restaurant 
        end
    end

end