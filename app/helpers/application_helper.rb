module ApplicationHelper
  def rating_view
    @recipe.ratings.length >= 5
  end
end
