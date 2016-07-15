class RecipeIngredientsController < ApplicationController
  def new
    @recipe_ingredient = RecipeIngredient.new
    @recipe = Recipe.find(params[:recipe_id])
  end

  def create
    @recipe = Recipe.find_by(id: params[:recipe_id])
    @ingredient = Ingredient.find_or_initialize_by(name: params[:recipe_ingredient][:name])
    @measurement = Measurement.find_or_initialize_by(name: params[:recipe_ingredient][:name])
    # binding.pry
    if @ingredient.save && @measurement.save
      @recipe_ingredient = RecipeIngredient.new(amount: params[:recipe_ingredients][:amount], ingredient: @ingredient, measurement: @measurement, recipe: @recipe)
      if @recipe_ingredient.save
        flash.now[:success] = "Your recipe ingredient was added to your recipe."
        redirect_to new_recipe_recipe_ingredient_path(@recipe)
      else
        flash[:danger] = "There was an issue saving your recipe"
        render 'new'
      end
    else
      flash[:danger] = "There was an issue creating your ingredient."
      render 'new'
    end
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
