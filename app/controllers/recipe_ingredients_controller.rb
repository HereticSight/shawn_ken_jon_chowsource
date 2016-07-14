class RecipeIngredientsController < ApplicationController
  def new
    @recipe_ingredient = RecipeIngredient.new
    @recipe = Recipe.find(params[:recipe_id])
  end

  def create

  end

  def update
  end

  def destroy
  end
end
