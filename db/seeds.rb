# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


movies = [
    {
        title: "FF2",
        length: 126,
        year: "2001"
    },
    {
        title: "FF3",
        length: 126,
        year: "2003"
    },
    {
        title: "FF4",
        length: 126,
        year: "2005"
    },
    {
        title: "FF5",
        length: 126,
        year: "2007"
    },
    {
        title: "FF6",
        length: 126,
        year: "2009"
    }
]

s1 = Studio.first

movies.each do |movie|
    m1 = Movie.new(movie)
    m1.studio = s1
    m1.save!
end

puts "Movies were added"