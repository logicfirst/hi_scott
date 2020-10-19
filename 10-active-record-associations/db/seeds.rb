require 'pry'

Doctor.destroy_all
Hospital.destroy_all
Patient.destroy_all

sacred_heart = Hospital.find_or_create_by(name: "Sacred Heart")
jd = Doctor.find_or_create_by(name: "John Dorian", specialty: "Internal Medicine", hospital_id: sacred_heart.id)
turk = Doctor.find_or_create_by(name: "Chris Turk", specialty: "Surgery", hospital_id: sacred_heart.id)
elliot = Doctor.find_or_create_by(name: "Elliot Reid", specialty: "Endocrinology", hospital_id: sacred_heart.id)

starfleet_medical = Hospital.find_or_create_by(name: "Starfleet Medical")

bones = Doctor.find_or_create_by(name: "Bones McCoy", hospital_id: starfleet_medical)
crusher = Doctor.find_or_create_by(name: "Beverly Crusher", hospital_id: starfleet_medical)