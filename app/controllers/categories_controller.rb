class CategoriesController < ApplicationController
	def show
		@category = Category.find(params[:id])
		render 'categories/show'
	end
end
