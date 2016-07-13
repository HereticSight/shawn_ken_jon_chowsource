json.array!(@amount_of_ingredients) do |amount_of_ingredient|
  json.extract! amount_of_ingredient, :id, :amount, :recipe_id, :ingredient_id, :measurement_id
  json.url amount_of_ingredient_url(amount_of_ingredient, format: :json)
end
