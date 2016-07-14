class RatingsController < ApplicationController
	before_action :redirect_anon
  def create
  	@recipe = Recipe.find(params[:recipe_id])
  	@rating = Rating.new( value: params[:value], user: current_user, recipe: @recipe) 
  	if @rating.save
  		flash[:success] = "You have successfully rated the recipe!"
  		redirect_to @recipe
  	else
  		flash[:danger] = "Failed to rate the recipe." 
  		redirect_to @recipe 
  	end
  end

  def edit
  end
end
