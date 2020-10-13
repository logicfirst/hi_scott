class RestaurantMeal

    attr_reader :restaurant, :meal 

    @@all_rows = []

    def initialize(restaurant, meal)
        @restaurant = restaurant
        @meal = meal 
        @@all_rows << self
    end

    def self.all 
        @@all_rows 
    end

end