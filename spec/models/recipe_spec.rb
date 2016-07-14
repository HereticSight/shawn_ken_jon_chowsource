require 'rails_helper'

RSpec.describe Recipe, type: :model do
	it 'returns its average rating' do
		user = User.new({
			name: "Grandma",
			email: "OriginalGrandma@OGma.com",
			password: "grandma"
		})
		recipe = Recipe.new({
			name: 				"Raspberries",
			difficulty: 	1,
			description: 	"Great soup",
			instructions: "Bop it, stop it, grab it, Pop it.",
			submitter: 		user,
			category: 		Category.find(4)
		})
	end
  let(:recipe) {Recipe.new({ submitter: "grandma", difficulty: 1,  })}
end
