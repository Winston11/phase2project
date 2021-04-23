# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.destroy_all
Review.destroy_all
StreamingService.destroy_all

# #users
win = User.create(name: "win", username: "win", password: "some")
abc = User.create(name: "abc", username: "abc123", password: "123")
taurus = User.create(name: "taurus", username: "zodiac", password: "april")
stream = User.create(name: "stream", username: "big_stream", password: "line")


#streaming services
hbo_max = StreamingService.create(title: "HBO Max", score: 5, price: "12")
disney_plus = StreamingService.create(title: "Disney Plus", score: 4.5, price: "10")
starz = StreamingService.create(title: "Starz", score: 4, price: "15")
showtime = StreamingService.create(title: "Showtime", score: 4, price: "13")
paramount_plus = StreamingService.create(title: "Paramount Plus", score: 3, price: "9")
netflix = StreamingService.create(title: "Netflix", score: 4, price: "15")

# #join tables - reviews
# r1 = Review.create(owner_id: win.id, streaming_id: hbo_max.id, overall_score: 5, comment: "Classic series and great movie selection")
# r2 = Review.create(owner_id: abc.id, streaming_id: hbo_max.id, overall_score: 5, comment: "Family love's it!")
# r3 = Review.create(owner_id: taurus.id, streaming_id: hbo_max.id, overall_score: 5, comment: "it's great!")

# r4 = Review.create(owner_id: taurus.id, streaming_id: disney_plus.id, overall_score: 4, comment: "Kids Enjoy It")
# r5 = Review.create(owner_id: win.id, streaming_id: starz.id, overall_score: 4, comment: "top 3 but not 1")
# r6 = Review.create(owner_id: abc.id, streaming_id: disney_plus.id, overall_score: 5, comment: "MCU and STAR WARS !!")

# Selection 
60.times do
Selection.create(
    title: Faker::Movie.title, 
    quote: Faker::Movie.quote
    )
end


puts "Seeds Planted"







