class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    session[:location] = params[:location]
  end

def create
	@category = Category.create( category_params )
end

private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def category_params
  params.require(:category).permit(:avatar)
end

end
