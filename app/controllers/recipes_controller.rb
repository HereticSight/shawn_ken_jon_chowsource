class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :edit, :destroy]

  def index
    @recipes = Recipe.paginate(page: params[:page], per_page: 10)
  end

  def show
    @recipe = Recipe.find(params[:id])
    @rating = Rating.find_or_initialize_by(rater: @current_user, recipe: @recipe)
    render 'recipes/show'
  end

  def new
    @categories = Category.all
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @categories = Category.all
    if @recipe.save
      redirect_to new_recipe_recipe_ingredient_path(@recipe)
    else
      flash[:danger] = "There was an error saving your recipe"
      render 'new'
    end
  end

  def update
    @recipe.update(recipe_params)
    redirect_to @recipe
  end

  def edit
  end

  def destroy
    @recipe.destroy
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name , :difficulty, :description, :instructions, :user_id, :category_id)
  end
end
