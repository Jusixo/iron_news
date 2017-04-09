# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'nokogiri'

(1..10).each do |page|
  Nokogiri::HTML(open('https://news.ycombinator.com')).css(".storylink").each { |link| Story.create(title: link.content, link: link.values.first, email: 'rubybrigade@gmail.com') }
end
