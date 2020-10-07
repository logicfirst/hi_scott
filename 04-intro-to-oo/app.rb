require 'pry'

# $cat_species = "feline" # global variable: accessible everywhere.  These are bad!

# petey = {name: "Petey", species: "feline", color: ["black", "white"]}

class Cat 
    
    @@all_cats = [] # class variable

    def initialize(name, color, fluffiness) # automatically gets called whenever you write .new
        puts "Create a new cat like a god"
        @name = name
        @color = color 
        @fluffiness = fluffiness
        @@all_cats << self
        # save this cat to a database
        # send an email to my mom telling her to take her allergy meds
    end

    def meow 
        # petey.meow
        # self == petey
        "Meow meow I am a pretty cat"
    end

    def self.all_cats # when self is in a method name, self refers to the Class Cat
        return @@all_cats
    end

    # define a class method called cat_names which returns an array of the names of all 
    # of the cats 

    def self.cat_names #["Petey", "Ella"] # Cat.cat_names
        # Cat.cat_names so self == Cat (class)


        # set an empty array for cat names
        # names = []
        # # get the array of all of the cats
        # # iterate through it (each)
        # Cat.all_cats.each do |cat|
        #     # push this cat's name into empty array 
        #     names << cat.name
        # end
        # # return the array
        # return names
        Cat.all_cats.map do |cat|
            cat.name
        end

    end

    # def name=(new_name) # setter
        # petey.name=(somethign) so self == petey
    #     # test_local_variable = "foo"
    #     @name = new_name # instance variable, accessible _everywhere_ within this class
    # end

    def name # getter
        return @name
    end
    
    # def set_color(colors)
    #     @color = colors 
    # end

    def color=(new_color)
        @color = new_color
    end

    def color
        # @name = "Bob"
        return @color 
    end
    
    def fluffiness=(new_fluffiness)
        @fluffiness = new_fluffiness
    end

    def fluffiness

        if @fluffiness > 6
            return "I am an extremely floofy kitty"
        else 
            return "I am not so floofy, but still better than a dog."
        end

    end

    def introduce # petey.introduce
        # puts test_local_variable # local variable only accessible in method it was defined in
        "Hi my name is #{self.name} and #{self.fluffiness}" 
    end

    # def test=(whatever)
    #     puts ("hello")
    # end
end

petey = Cat.new("Petey", "black and white", 10) # an instance of the Cat class
# petey.set_name("Petey")
# petey.name=("Petey")
# petey.name = "Petey"
# petey.introduce
# petey.fluffiness = 10
# puts petey.fluffiness

ella = Cat.new("Ella", "black", 10)
# ella.name = "Ella"
# ella.fluffiness = 10
# ella.color = "Black"
# ella.set_name("Ella")


binding.pry