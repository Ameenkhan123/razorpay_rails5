class ProductsController < ApplicationController
  def index
  	# @products = Product.all.page(params[:page]).per(10)
  	# @seller = Seller.find_by_id(@product.seller_id)
    @products = Product.all
    # @products = Product.first
    # @product2 = Product.second
  end
  def new
     @product = Product.new
  end
  def create
        @product = Product.new(product_params)
        @product.save
        redirect_to @product
    end
  def show 
    # @product = Product.find(params[:id])
    @product = Product.find_by(id: params['id'])
    if params['mode'] == 'automatic'
      render 'automatic'
    else
      render 'index'
    end
  end
  private
  def product_params
    params.require(:product).permit(:title, :description, :price, :seller_id )
  end
end
