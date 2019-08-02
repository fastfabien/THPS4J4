# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
=begin
tab = []
#tab =["Cardiologists", "Dermatologists‎", "Gynaecologists‎", "Neurologists"‎]
tab = ["Neurologist", "Cardiologists", "Dermatologists‎"]

100.times do
	Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: tab[rand(0..2)], zip_code: Faker::Address.zip)
end

100.times do
	Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

100.times do
	Appointment.create(date: Faker::Date.forward( days:  23 ))
end
=end
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
SpecialityDoctor.destroy_all

tab = []
array_city = []
spec_array = []
#tab =["Cardiologists", "Dermatologists‎", "Gynaecologists‎", "Neurologists"‎]
tab = ["Neurologist", "Cardiologists", "Dermatologists‎"]

20.times do |i|
	array_city[i] = City.create(name: Faker::Address.city)
	puts "#{(i*5)+1}%"
end
3.times do |i|
	spec_array[i] = Speciality.create(name:tab[i])
end
array_city[rand(19)]
100.times do |i|
	d = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code,city_id: array_city[rand(19)].id)
	pa = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,city_id: array_city[rand(19)].id)
	Appointment.create(date: Faker::Date.forward( days:  23 ),doctor: d,patient: pa,city_id: array_city[rand(19)].id)
	sd = SpecialityDoctor.create(doctor: d, speciality: spec_array[rand(2)])
	puts "#{i}%"
end