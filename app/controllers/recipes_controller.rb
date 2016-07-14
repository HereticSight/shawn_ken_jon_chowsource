class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :edit, :destroy]

  def show
    @recipe = Recipe.find(params[:id])
    render 'recipes/show'
  end

  def new
    @recipe = Recipe.new
  end

  def create
    recipe = Recipe.build(recipe_params)
    if recipe.save
      redirect_to recipe_rout(recipe.id)
    else
      render 'new'
    end
  end

  def update
    @recipe.update(recipe_params)
    redirect_to recipe_rout(@recipe.id)
  end

  def edit
  end

  def destroy
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
