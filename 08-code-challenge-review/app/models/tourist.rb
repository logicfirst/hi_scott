class Tourist

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end

    def name 
        @name 
    end

    def self.all
        return @@all 
    end

    def self.find_by_name(name)
        Tourist.all.find do |tourist|
            tourist.name == name
        end
    end

    def trips
        Trip.all.select do |trip|
            trip.tourist == self
        end
    end

    def landmarks
        self.trips.map do |trip|
            trip.landmark
        end
    end

    def visit_landmark(new_landmark)
        Trip.new(self, new_landmark)
    end

    def never_visited
        x = Landmark.all - self.landmarks
        # return not_been_to

        # Landmark.all.select do |landmark|
        #     !self.landmarks.include?(landmark)
        # end
    end
end
