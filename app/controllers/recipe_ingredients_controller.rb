class RecipeIngredientsController < ApplicationController
  before_action :set_recipe
  def new
    @recipe_ingredient = RecipeIngredient.new
  end

  def create
    @recipe_ingredient = RecipeIngredient.new
    @ingredient = Ingredient.find_or_initialize_by(name: recipe_ingredients_params[:ingredient])
    @measurement = Measurement.find_or_initialize_by(name: recipe_ingredients_params[:measurement].downcase)
    if @ingredient.save && @measurement.save
      @recipe_ingredient.update_attributes(amount: recipe_ingredients_params[:amount], ingredient: @ingredient, measurement: @measurement, recipe: @recipe)
      if @recipe_ingredient.save
        flash[:success] = "Your recipe ingredient was added to your recipe."
        redirect_to new_recipe_recipe_ingredient_path(@recipe)
      else
        @errors = @recipe_ingredient.errors.full_messages
        flash.now[:danger] = "There was an issue saving your recipe"
        render 'new'
      end
    else
      @errors = @ingredient.errors.full_messages + @measurement.errors.full_messages
      flash.now[:danger] = "There was an issue creating your ingredient."
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  private
  def recipe_ingredients_params
    params.require(:recipe_ingredient).permit(:recipe , :amount, :ingredient, :measurement)
  end


  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end
