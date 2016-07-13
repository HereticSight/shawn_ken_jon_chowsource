class CreateRecipes < ActiveRecord::Migration
  def change
    create_table   :recipes do |t|
      t.string     :name, limit: 120
      t.integer    :difficulty, null: false
      t.text       :description, null: false
      t.text       :instructions, null: false
      t.references :user, null: false
      t.references :category, null: false

      t.timestamps null: false
    end
  end
end
