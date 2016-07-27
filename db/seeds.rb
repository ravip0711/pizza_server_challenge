# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Pizza.create(id: 1, name: "4 Cheese Pizza", description: "cheese, cheese")
Topping.create(id: 1, name: "Cheese")
PizzaTopping.create(id: 1, pizza_id: 1, topping_id: 1)