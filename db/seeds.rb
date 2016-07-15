User.create({
	name: "Grandma Hawkins",
	email: "OriginalGrandma@OGma.com",
	password: "grandma"
	})

50.times do
	User.create(
		name: Faker::Name.name,
		email: Faker::Internet.email,
		password: "password")
end

Category.create({ name: "Breakfast"})
Category.create({ name: "Lunch"})
Category.create({ name: "Dinner"})
Category.create({ name: "Dessert"})
Category.create({ name: "Beverages"})

Ingredient.create({ name: "Salt"})
Ingredient.create({ name: "Sugar"})
Ingredient.create({ name: "Flour"})
Ingredient.create({ name: "Flowers"})
Ingredient.create({ name: "Raisins"})
Ingredient.create({ name: "Almonds"})
Ingredient.create({ name: "Beef"})
Ingredient.create({ name: "Chicken Stock"})

Measurement.create({ name: "cup" })
Measurement.create({ name: "cone" })
Measurement.create({ name: "scoop" })
Measurement.create({ name: "glob" })
Measurement.create({ name: "unit" })
Measurement.create({ name: "forth" })
Measurement.create({ name: "quart"})

30.times do
	recipe = Recipe.create({
		name: 				Faker::Beer.name,
		difficulty: 	rand(1..10),
		description: 	Faker::Hipster.paragraph(rand(1..4)),
		instructions: Faker::Hipster.paragraph(rand(3..7)),
		submitter: 		User.limit(1).order("RANDOM()").first,
		category: 		Category.limit(1).order("RANDOM()").first
		})

	rand(1..3).times do
		recipe.recipe_ingredients.create({
			amount: rand(1..50),
			ingredient: Ingredient.limit(1).order("RANDOM()").first,
			measurement: Measurement.limit(1).order("RANDOM()").first,
			})
	end
end

300.times do
	recipe = Recipe.limit(1).order("RANDOM()").first
	recipe.ratings.create( {
			rater: User.limit(1).order("RANDOM()").first,
			value: rand(1..5)
		} )
end
