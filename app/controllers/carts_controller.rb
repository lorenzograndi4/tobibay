class CartsController < ApplicationController
before_action :authenticate_user!
before_action :set_product
before_action :set_user

  # def index
  #   @carts = Cart.find(params[:user_id])
  #   selected_products = @carts.products
  # end

  def new
    @cart = current_user.carts.build
  end

  def create
    @cart = current_user.carts.build(cart_params)
    @cart.save
    redirect_to @cart.product, notice: "Product(s) added to your cart!"
  end

  private

  def cart_params
     params.require(:cart).permit(:amount)
  end

  def set_product
    @product = Product.find(params[:product_id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
