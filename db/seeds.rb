# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'nokogiri'

user_1 = User.create!(name: "justin", email: "justin@gmail.com", password: "password", password_confirmation: "password")
user_2 = User.create!(name: "patrick", email: "pjm@gmail.com", password: "password", password_confirmation: "password")

Nokogiri::HTML(open("https://news.ycombinator.com")).css(".storylink").each_with_index { |article, index| Story.create(title: article.content, link: article.values.first, user: index.odd? ? user_1 : user_2, image: File.open(Rails.root.join("db/seeds/images/DK.png"))) }
