# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Receptionist.create!(email:"user@test.com", password:"user123", password_confirmation:"user123")
Doctor.create!(email:"doctor@test.com", password:"doctor123", password_confirmation:"doctor123")
Patient.create!(name:"Shaikh Umair Ahmed")
