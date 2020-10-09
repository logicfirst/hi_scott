class School

    attr_reader :name, :address

    @@all = []

    def initialize(name, address) # argument of name passed in to initialize / new
        @name = name # assigning the argument `name` to the instance variable `@name`
        @address = address
        @@all << self
    end
    
    # def name # name of the instance method (it is a reader / getter / but that's not too important)
    #     return @name # instance variable
    # end
    
    # def instructors 
    #     return @instructors 
    # end

    def add_instructor(instructor) # flatiron.add_instructor(shannon)
        instructor.join_school(self) # instructor == shannon ; self == flatiron
    end

    def work_with_string(some_string)
        return some_string.upcase
    end

    def self.all 
        return @@all
    end

    def self.find_by_name(school_name)
        # look through all the schools
        # use .find to locate the school with a name matching the 
            # given parameter
        found_school = School.all.find do |school|
            school.name == school_name
        end
        return found_school
        
    end
    
    def instructors 
        # return an array of all instructors working at this school

        # look through all Instructors (Instructor.all)
        # use .select to get all instructors (trying to get all matches)
        # where the instructor school is equal to self 
        Instructor.all.select do |instructor|
            instructor.school == self 
        end



    end

end