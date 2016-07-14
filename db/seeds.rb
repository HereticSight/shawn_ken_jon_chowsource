# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Basic Users
User.create({
	name: "Grandma",
	email: "OriginalGrandma@OGma.com",
	password: "grandma"
	})


# Basic Categories
Category.create({ name: "Breakfast"})
Category.create({ name: "Lunch"})
Category.create({ name: "Dinner"})
Category.create({ name: "Dessert"})
Category.create({ name: "Beverages"})


# Basic Recipes
Recipe.create({
	name: "Soup", 
	difficulty: 1, 
	description: "Great soup", 
	instructions: "Bop it, stop it, grab it, Pop it.",
	user_id: 1, 
	category_id: 1
	})

Recipe.create({
	name: "Soup", 
	difficulty: 1, 
	description: "Great soup", 
	instructions: "Bop it, stop it, grab it, Pop it.",
	user_id: 1, 
	category_id: 2
	})

Recipe.create({
	name: "Chocolate", 
	difficulty: 1, 
	description: "Great soup", 
	instructions: "Bop it, stop it, grab it, Pop it.",
	user_id: 1, 
	category_id: 3
	})

Recipe.create({
	name: "Raspberries", 
	difficulty: 1, 
	description: "Great soup", 
	instructions: "Bop it, stop it, grab it, Pop it.",
	user_id: 1, 
	category_id: 4
	})

Recipe.create({
	name: "Sandwich", 
	difficulty: 1, 
	description: "Great soup", 
	instructions: "Bop it, stop it, grab it, Pop it.",
	user_id: 1, 
	category_id: 5
	})
