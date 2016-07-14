class CategoriesController < ApplicationController
	def show
		@category = Category.find(params[:id])
    @recipes = Recipe.where(category:@category).paginate(page: params[:page], per_page: 5)
		render 'categories/show'
	end
end
