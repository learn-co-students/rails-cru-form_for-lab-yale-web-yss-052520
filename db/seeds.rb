# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Genre.destroy_all
Song.destroy_all

a1 = Artist.create(name: "AC/DC", bio: "We are AC/DC")
a2 = Artist.create(name: "John Lennon", bio: "I was the lead guitar player for The Beatles")
a3 = Artist.create(name: "YG", bio: "Oh yea")
a4 = Artist.create(name: "Metallica", bio: "We are Metallica")
a5 = Artist.create(name: "Eminem", bio: "I am the greatest rapper of all time")

g1 = Genre.create(name: "Rap")
g2 = Genre.create(name: "Rock")
g3 = Genre.create(name: "Hip Hop")

s1 = Song.create(name: "S1", artist_id: a3.id , genre_id: g1.id) 
s2 = Song.create(name: "S2", artist_id: a2.id , genre_id: g3.id) 
s3 = Song.create(name: "S3", artist_id: a4.id , genre_id: g1.id) 
s4 = Song.create(name: "S4", artist_id: a2.id , genre_id: g2.id) 
s5 = Song.create(name: "S5", artist_id: a3.id , genre_id: g3.id) 
s6 = Song.create(name: "S6", artist_id: a4.id , genre_id: g1.id) 
