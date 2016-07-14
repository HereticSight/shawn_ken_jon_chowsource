class StaticpagesController < ApplicationController
  def index
  	@categories = Category.all
  end
end
