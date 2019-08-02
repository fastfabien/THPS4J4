class Speciality < ApplicationRecord
	has_many :speciality_doctors
	has_many :doctors, through: :speciality_doctors
end
