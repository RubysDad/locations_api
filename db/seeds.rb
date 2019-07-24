# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p = Location.create(name: "Phoenix", slug: 'phoenix')
p.recordings.create(temp: 32, status: "cloudy")
p.recordings.create(temp: 34, status: "cloudy")
p.recordings.create(temp: 24, status: "rainy")
p.recordings.create(temp: 50, status: "sunny")
p.recordings.create(temp: 16, status: "rainy")

n = Location.create(name: "Nashville", slug: 'nashville')
n.recordings.create(temp: 32, status: "cloudy")
n.recordings.create(temp: 34, status: "cloudy")
n.recordings.create(temp: 24, status: "rainy")
n.recordings.create(temp: 50, status: "sunny")
n.recordings.create(temp: 16, status: "rainy")