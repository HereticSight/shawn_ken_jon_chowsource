class Recipe < ActiveRecord::Base
  belongs_to :submitter, class_name: :User, foreign_key: :user_id
  belongs_to :category
  has_many   :recipe_ingredients, dependent: :destroy
  has_many   :ingredients, through: :recipe_ingredients, source: :ingredients
  has_many 	 :ratings


  validates :submitter, uniqueness: { scope: :category }
  validates :submitter, :category, presence: true

  def rating
  	if ratings.length == 0
  		return 0
  	end
  	ratings.reduce(0) { |sum,rating| sum + rating.value/ratings.length.to_f }
  end
end
