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

10.times do
	User.create({
		name: Faker::Name.name,
		email: Faker::Internet.email,
		password: "password"
	})
end


# Basic Categories
Category.create({ name: "Breakfast"})
Category.create({ name: "Lunch"})
Category.create({ name: "Dinner"})
Category.create({ name: "Dessert"})
Category.create({ name: "Beverages"})

# Basic Ingredients
Ingredient.create({ name: "Salt", description: "Very tasty" })
Ingredient.create({ name: "Sugar", description: "Very tasty" })
Ingredient.create({ name: "Flour", description: "Very tasty" })
Ingredient.create({ name: "Flowers", description: "Very tasty" })
Ingredient.create({ name: "Raisins", description: "Very tasty" })
Ingredient.create({ name: "Almins", description: "Very tasty" })

# Basic Measurements
Measurement.create({ name: "metrics" })
Measurement.create({ name: "cups" })
Measurement.create({ name: "cones" })
Measurement.create({ name: "scoops" })
Measurement.create({ name: "globs" })
Measurement.create({ name: "units" })
Measurement.create({ name: "units of measurement" })
Measurement.create({ name: "forths" })
Measurement.create({ name: "1/8's" })

# Basic Recipes
10.times do |i|
	Recipe.create!({
		name: 				"Soup", 
		difficulty: 	1, 
		description: 	"Great soup", 
		instructions: "Bop it, stop it, grab it, Pop it.",
		user: 				User.find(i+1),
		category: 		Category.find(1)
		})

	Recipe.create!({
		name: 				"Soup", 
		difficulty: 	1, 
		description: 	"Great soup", 
		instructions: "Bop it, stop it, grab it, Pop it.",
		user: 				User.find(i+1),
		category: 		Category.find(2)
		})

	Recipe.create!({
		name: 				"Chocolate", 
		difficulty: 	1, 
		description: 	"Great soup", 
		instructions: "Bop it, stop it, grab it, Pop it.",
		user: 				User.find(i+1),
		category: 		Category.find(3)
		})

	Recipe.create!({
		name: 				"Raspberries", 
		difficulty: 	1, 
		description: 	"Great soup", 
		instructions: "Bop it, stop it, grab it, Pop it.",
		user: 				User.find(i+1),
		category: 		Category.find(4)
		})

	Recipe.create!({
		name: 				"Sandwich", 
		difficulty: 	1, 
		description: 	"Great soup", 
		instructions: "Bop it, stop it, grab it, Pop it.",
		user: 				User.find(i+1),
		category: 		Category.find(5)
		})
end




