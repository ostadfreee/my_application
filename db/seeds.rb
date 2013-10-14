# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

include Faker 
Product.delete_all
images = ['shoe_brown.jpg','shoe_brown.jpg','shoe_brown.jpg','shoe_brown.jpg','shoe_brown.jpg']
50.times do 
Product.create(name: Commerce.product_name, content: Lorem.paragraphs(rand(1..2)).join('</br>'), released_at: Time.now, cost: ((rand *100).to_i/10), image: images[rand(0..images.length)])
end














