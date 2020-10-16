class Author < ActiveRecord::Base
    
    def full_name
        return "#{self.first_name} #{self.last_name}"
    end

    def self.likes_number_greater_than_five

        # authors = Author.all 
        # authors.select do |author|
        #     author.favorite_number > 5
        # end
        Author.where('favorite_number > 5')
    end
end