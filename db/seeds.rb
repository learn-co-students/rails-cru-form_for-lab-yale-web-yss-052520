# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
    Artist.create(name: Faker::Name.name, bio: Faker::Quote.yoda)
end

10.times do
    Genre.create(name: Faker::Music.genre)
end

20.times do
    artist = rand Artist.count
    genre = rand Genre.count
    Song.create(name: Faker::Music::Prince.song, artist_id: artist, genre_id: genre)
end
