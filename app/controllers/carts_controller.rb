class CartsController < ApplicationController
before_action :set_product

  def create
    @cart = current_user.carts.create(cart_params)

    redirect_to @cart.product, notice: "Product(s) added to your cart!"
  end


  private

  def cart_params
     params.require(:cart).permit(:amount)
  end

  def set_product
    @product = Product.find(params[:product_id])
  end

end
