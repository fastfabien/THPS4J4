class Doctor < ApplicationRecord
	has_many :appointments
	has_many :patients, through: :appointments
	belongs_to :city
	has_many :speciality_doctors
	has_many :specialities, through: :speciality_doctors
end
