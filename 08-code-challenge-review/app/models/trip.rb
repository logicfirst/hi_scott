class Trip

    attr_reader :tourist, :date, :landmark
    
    @@all = []

    def initialize(tourist, landmark)
        @tourist = tourist
        @landmark = landmark
        @date = "7/4/20"
        @@all << self
    end

    # def tourist 
    #     return @tourist
    # end

    # def date 
    #     return @date
    # end

    # def landmark 
    #     return @landmark
    # end

    def self.all 
        return @@all 
    end
end