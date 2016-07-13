class AmountOfIngredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :ingredient
  belongs_to :measurement
end
