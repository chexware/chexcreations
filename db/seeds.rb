# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

thought_content = "Test " * 300

Tag.destroy_all
Tag.create!(name: 'Music')
Tag.create!(name: 'Software')
Tag.create!(name: 'Art')
p "Created #{Tag.count} tags"

Thought.destroy_all
Thought.create!(title: 'Topic Test 1',publish_date: DateTime.parse('2016-05-19 10:30:14'), content: thought_content)
Thought.create!(title: 'Topic Test 2',publish_date: DateTime.parse('2016-05-19 10:30:15'), content: thought_content)
Thought.create!(title: 'Topic Test 3',publish_date: DateTime.parse('2016-05-19 10:30:16'), content: thought_content)
Thought.create!(title: 'Topic Test 4',publish_date: DateTime.parse('2016-05-19 10:30:17'), content: thought_content)
p "Created #{Thought.count} thoughts"

User.destroy_all
User.create!(name: 'admin',password_digest: 'pass')
p "Created admin user"



