class RestaurantMeal

    attr_reader :restaurant, :meal 
    
    def initialize(restaurant, meal)
        @restaurant = restaurant
        @meal = meal 
    end

end