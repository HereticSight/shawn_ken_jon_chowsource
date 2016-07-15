class AddNullFalse < ActiveRecord::Migration
  def change
    change_column(:recipe_ingredients, :measurement_id, :integer, null:false)
    change_column(:recipe_ingredients, :ingredient_id, :integer, null:false)
    change_column(:recipe_ingredients, :amount, :integer, null:false)
    change_column(:recipe_ingredients, :recipe_id, :integer, null:false)
  end
end
