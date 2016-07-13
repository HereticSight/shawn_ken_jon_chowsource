class Recipe < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many   :amount_of_ingredients
  has_many   :amount_of_ingredients, through: :amount_of_ingredients, source: :ingredients

  validates :employee_id, uniqueness: { scope: :area_id }
  validates :user, :category, :amount_of_ingredients, presence: true
end
