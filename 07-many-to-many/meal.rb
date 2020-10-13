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

    end

end