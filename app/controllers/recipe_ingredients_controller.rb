class RecipeIngredientsController < ApplicationController
  def new
    @recipe_ingredient = RecipeIngredient.new
    @recipe = Recipe.find(params[:recipe_id])
  end

  def create
    @recipe_ingredient = RecipeIngredient.create(recipe_ingredients_params)
  end

  def update
  end

  def destroy
  end

  private
  def recipe_ingredients_params
    params.require(:recipe_ingredient).permit(:recipe_id , :amount, :ingredient, :measurement)
  end
end
