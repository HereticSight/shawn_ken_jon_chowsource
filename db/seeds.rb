# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


recipes = Recipes.create([{}])


# Basic Categories
Category.create({ name: "Breakfast"})
Category.create({ name: "Lunch"})
Category.create({ name: "Dinner"})
Category.create({ name: "Dessert"})
Category.create({ name: "Beverages"})


# Basic Recipes
Recipe.create({
	name: "Soup", difficulty: nil, description: nil, instructions: nil, user_id: nil, category_id
	})

