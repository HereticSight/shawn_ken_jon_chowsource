class RecipeIngredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :ingredient
  belongs_to :measurement

  validates :amount, presence: true
  validates :ingredient, presence: true, uniqueness: { scope: [:recipe, :measurement, :amount] }
  validates :measurement, presence: true
end
