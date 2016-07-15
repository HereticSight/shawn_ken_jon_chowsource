class Category < ActiveRecord::Base
  has_many  :recipes

  validates :name, presence: true, uniqueness: { case_sensitive: false }

  def highest_rated_recipe
  	recipes.max_by(&:rating)
  end
end
