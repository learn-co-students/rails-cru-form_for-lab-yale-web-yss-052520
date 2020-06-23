# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a1 = Artist.new
a1.name = 'Tom Misch'
a1.bio = 'South London Represent'
a1.save

a2 = Artist.new
a2.name = 'Michael Jackson'
a2.bio = "That's Ignorant"
a2.save

g1 = Genre.new
g1.name = 'Jazz'
g1.save

g2 = Genre.new
g2.name = 'Rock'
g2.save

s1 = Song.new
s1.name = 'Movie'
s1.artist_id = 1
s1.genre_id = 1
s1.save

s2 = Song.new
s2.name = 'Thriller'
s2.artist_id = 2
s2.genre_id = 2
s2.save