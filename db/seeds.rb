# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

list = List.create(item: "clean house", description: "deep clean kitchen, do laundry, take out the trash", priority: "high")
list.save

list = List.create(item: "grocery shopping", description: "eggs, potatoes, butter, apples, popcorn, ice cream", priority: "medium")
list.save

list = List.create(item: "pack for weekend trip", description: "2 days one night, bring wedding clothes", priority: "low")
list.save
