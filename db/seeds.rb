# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Trip.destroy_all

User.create(username: "etamar", age:29)
User.create(username: "carl", age:22)
User.create(username: "michael", age:34)



Trip.create(destination:"chicago", duration:5, date:"2021-12-31", cost: 1500, user_id: User.first.id)
Trip.create(destination:"new york", duration:7, date:"2022-12-31", cost: 2000, user_id: User.first.id)