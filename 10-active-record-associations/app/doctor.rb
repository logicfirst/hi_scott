class Doctor < ActiveRecord::Base 

    def hospital
        # write the code needed to return 
        # the hospital associated with this doctor
        # Hospital.all.find do |hospital|
        #     hospital.id == self.hospital_id
        # end # slow and not advised

        Hospital.find_by(id: self.hospital_id)
    end

    def self.print_all_doctor_names
        Doctor.all.each do |doctor|
            puts doctor.name 
        end
        return nil
    end
end