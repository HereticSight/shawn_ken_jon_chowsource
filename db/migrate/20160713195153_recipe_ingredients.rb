class RecipeIngredients < ActiveRecord::Migration
  def change
  	create_table :recipe_ingredients do |t|
      t.integer 		:amount
      t.references	:recipe
      t.references	:ingredient
      t.references	:measurement

      t.timestamps null: false
    end
  end
end
