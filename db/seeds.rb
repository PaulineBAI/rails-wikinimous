# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroy all articles"
Article.destroy_all
puts "#{Article.count} in database"

require 'faker'

articles = []

10.times do
  articles.push({title: Faker::Book.title, content: Faker::Movie.quote })
end

puts "Create 10 articles"
Article.create(articles)
puts "#{Article.count} articles created"
