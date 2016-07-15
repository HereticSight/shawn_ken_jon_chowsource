User.create!({
	name: "Grandma Hawkins",
	email: "OriginalGrandma@OGma.com",
	password: "grandma"
	})

50.times do
	User.create!(
		name: Faker::Name.name,
		email: Faker::Internet.email,
		password: "password")
end

Category.create!({ name: "Breakfast"})
Category.create!({ name: "Lunch"})
Category.create!({ name: "Dinner"})
Category.create!({ name: "Dessert"})
Category.create!({ name: "Beverages"})

Ingredient.create!({ name: "Salt"})
Ingredient.create!({ name: "Sugar"})
Ingredient.create!({ name: "Flour"})
Ingredient.create!({ name: "Flowers"})
Ingredient.create!({ name: "Raisins"})
Ingredient.create!({ name: "Almonds"})
Ingredient.create!({ name: "Beef"})
Ingredient.create!({ name: "Chicken Stock"})
Ingredient.create!({ name: "Tomato Sauce"})
Ingredient.create!({ name: "Potato"})
Ingredient.create!({ name: "Tomato"})

Measurement.create!({ name: "cup" })
Measurement.create!({ name: "cone" })
Measurement.create!({ name: "scoop" })
Measurement.create!({ name: "glob" })
Measurement.create!({ name: "unit" })
Measurement.create!({ name: "forth" })
Measurement.create!({ name: "quart"})
Measurement.create!({ name: "barrel"})

user_set_1 = User.limit(25)
user_set_2 = User.order(id: :desc).limit(25)

user_set_1.each do |user|
	recipe = user.recipes.create!({
		name: 				Faker::Beer.name,
		difficulty: 	rand(1..10),
		description: 	Faker::Hipster.paragraph(rand(1..4)),
		instructions: Faker::Hipster.paragraph(rand(3..7)),
		category: 		Category.order("RANDOM()").limit(1).first
		})
	rand(1..3).times do
		recipe.recipe_ingredients.create!({
			amount: rand(1..50),
			ingredient: Ingredient.order("RANDOM()").limit(1).first,
			measurement: Measurement.order("RANDOM()").limit(1).first,
			})
	end
end

user_set_2.each do |user|
	recipe = user.recipes.create!({
		name: 				Faker::Beer.name,
		difficulty: 	rand(1..10),
		description: 	Faker::Hipster.paragraph(rand(1..4)),
		instructions: Faker::Hipster.paragraph(rand(3..7)),
		category: 		Category.order("RANDOM()").limit(1).first
		})
	rand(1..3).times do
		recipe.recipe_ingredients.create!({
			amount: rand(1..50),
			ingredient: Ingredient.order("RANDOM()").limit(1).first,
			measurement: Measurement.order("RANDOM()").limit(1).first,
			})
	end
end


	recipes = Recipe.limit(30)

	recipes.each do |recipe|
		user_set_1.each do |user|
			recipe.ratings.create!( {
					rater: user,
					value: rand(1..5)
				} )
		end
	end

	recipes = Recipe.order(id: :desc).limit(30)

	recipes.each do |recipe|
		user_set_2.each do |user|
			recipe.ratings.create!( {
					rater: user,
					value: rand(1..5)
				} )
		end
	end
