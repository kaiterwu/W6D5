# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

cat = Cat.new(birth_date: Date.today -1, color: "black", name: "millyrock",sex: ":F", description: "angry cat that doesn't know when to stop talking")