require 'pry'

class Country

     attr_reader :language, :name

     def initialize(name, language)
          @name = name 
          @language = language
     end

     def welcome_to
          puts "Welcome to #{@name}!"
     end

     def speaks_french?
          binding.pry
          if self.language == "French"
               return true
          else 
               return false
          end
     end
end

france = Country.new("France", "French")
italy = Country.new("Italy", "Italian")

france.welcome_to
italy.welcome_to

binding.pry
