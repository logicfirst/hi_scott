class Hospital < ActiveRecord::Base

    def doctors 
        Doctor.all
    end
end