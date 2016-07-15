class Recipe < ActiveRecord::Base
  belongs_to :submitter, class_name: :User, foreign_key: :user_id
  belongs_to :category
  has_many   :recipe_ingredients, dependent: :destroy
  has_many   :ingredients, through: :recipe_ingredients, source: :ingredient
  has_many   :ratings
  has_many   :raters, through: :ratings, source: :rater

  validates :submitter, uniqueness: { scope: :category }
  validates :submitter, :instructions, :category,:name, :difficulty, :description, presence: true

  def rating
  return 0 if ratings.length < 5
  	(ratings.reduce(0) { |sum,rating| sum + rating.value/ratings.length.to_f }).round(2)
  end
end
