class CreateAmountOfIngredients < ActiveRecord::Migration
  def change
    create_table :amount_of_ingredients do |t|
      t.integer :amount
      t.references :recipe, index: true, foreign_key: true
      t.references :ingredient, index: true, foreign_key: true
      t.references :measurement, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
