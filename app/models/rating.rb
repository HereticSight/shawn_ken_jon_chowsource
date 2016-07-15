class Rating < ActiveRecord::Base
  belongs_to :rater, class_name: 'User', foreign_key: "user_id"
  belongs_to :recipe

  validates :rater, uniqueness: { scope: :recipe }
end
