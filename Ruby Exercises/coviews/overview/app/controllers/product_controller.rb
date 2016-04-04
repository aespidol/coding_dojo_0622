class ProductController < ApplicationController
  def index
  	@products = Product.all
  end

  def new
  end

  def create
  	@product = Product.create( product_params )
  	redirect_to '/product/index'
  end
  private
  	def product_params
  		params.require(:product).permit(:name, :description)
  	end
end
