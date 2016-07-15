class RemoveDescriptionColumnFromIngredientTable < ActiveRecord::Migration
  def change
    remove_column :ingredients, :description
  end
end
