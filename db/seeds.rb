# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


15.times do 
  Influenceur.create!(
    username: Faker::Name.name,
    name: "EneJota",
    follower: 4367,
    following: 109520530,
    engagment: 2.60,
    like: 2852560.00,
    comment: 18.80
    )
end