# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
JournalEntry.destroy_all

breakfast = Category.create(category: "Breakfast")
lunch = Category.create(category: "Lunch")
Dinner = Category.create(category: "Dinner")
Snack = Category.create(category: "Snack")

JournalEntry.create(meal: "Breakfast Sandwich", description: "Sandwich thin, egg, canadian bacon, chedder cheese", 
calorie_count: 310, image_url: "https://1.bp.blogspot.com/_dDpVy2QcSh4/TCKT3Tx3S7I/AAAAAAAAAN4/Ng9U8P1CGAg/s1600/DSCN1756.JPG", category_id: breakfast.id, date: 9/1/20)