class Measurement < ActiveRecord::Base
  has_many :recipe_ingredients
  has_many :recipe, through: :recipe_ingredients, source: :recipe

  before_save :downcase_name

  validates :name, presence: true, uniqueness: {case_sensitive: false}

  private

  def downcase_name
    name.downcase!
  end

end
