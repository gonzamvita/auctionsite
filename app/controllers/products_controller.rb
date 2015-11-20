class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    product = Product.new(entry_params)
    if product.save
      redirect_to(action: 'index', controller: 'products')
    end
  end

  def entry_params
    params.require(:product).permit(:title, :description, :deadline)
  end
end
