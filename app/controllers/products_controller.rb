class ProductsController < ApplicationController

  def index
    @products = Product.all
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to products_path
  end



  private

  def set_product
    @product = Product.find(params[:product_id])
  end

end
