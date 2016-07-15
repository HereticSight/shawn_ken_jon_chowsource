class RatingsController < ApplicationController
	before_action :redirect_anon
  def create
  	@recipe = Recipe.find(params[:recipe_id])
  	@rating = Rating.new( value: params[:value], rater: current_user, recipe: @recipe)
  	if @rating.save
  		flash[:success] = "You have successfully rated the recipe!"
  		redirect_to @recipe
  	else
  		flash[:danger] = "Failed to rate the recipe."
  		redirect_to @recipe
  	end
  end

  def update
    @recipe = Recipe.find(rating_params[:recipe_id])
    @rating = Rating.find_by(id: rating_params[:rating_id])
    # binding.pry
    @rating.update_attributes({value: rating_params[:value]})
    if @rating.save
      redirect_to @recipe
    else
      flash.now[:danger] = "There was an error changing your rating"
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:rating_id, :recipe_id, :value)
  end
end
