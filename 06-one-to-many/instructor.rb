class Instructor

    attr_accessor :name
    attr_reader :school

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    # def school
    #     if @school.name == "Bayside High"
    #         return "B-B-B-B-Go Bayside"
    #     else
    #        return @school 
    #     end
    # end


    def join_school(school)
        @school = school
    end

    def self.all 
        return @@all 
    end

    def school_name
        # @school OR self.school
        self.school.name

    end

end
