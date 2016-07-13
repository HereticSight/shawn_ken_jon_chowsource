class Recipe < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many   :recipe_ingredients
  has_many   :ingredients, through: :recipe_ingredients, source: :ingredients

  validates :user, uniqueness: { scope: :category }
  validates :user, :category, :recipe_ingredients, presence: true
end
