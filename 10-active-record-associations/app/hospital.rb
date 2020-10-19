class Hospital < ActiveRecord::Base

    has_many :doctors

    def doctors 
        Doctor.all
    end
end