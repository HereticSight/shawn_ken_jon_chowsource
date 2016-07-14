class Recipe < ActiveRecord::Base
  belongs_to :submitter, class_name: :User, foreign_key: :user_id
  belongs_to :category
  has_many   :recipe_ingredients, dependent: :destroy
  has_many   :ingredients, through: :recipe_ingredients, source: :ingredients

  validates :user, uniqueness: { scope: :category }
  validates :user, :category, presence: true
end
