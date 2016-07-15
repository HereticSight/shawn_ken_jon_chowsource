class User < ActiveRecord::Base

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  has_many :recipes, dependent: :destroy
  has_many :categories, through: :recipes, source: :category
  has_many :ratings

  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

  has_secure_password

  before_save :downcase_email

  def rated?(recipe)
    !self.ratings.find_by(recipe: recipe)
  end

  private

    # Converts email to all lower-case.
    def downcase_email
      email.downcase!
    end
end
