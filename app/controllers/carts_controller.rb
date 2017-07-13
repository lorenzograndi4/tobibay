class CartsController < ApplicationController
before_action :authenticate_user!
before_action :set_product
# before_action :set_user # This is done via authenticate_user

  # def index
  #   @carts = Cart.find(params[:user_id])
  #   selected_products = @carts.products
  # end

  def initialize (user_id: product_id: amount: selected_products:)
    @selected_products = []
    # @user_id =set_user
    # @product = set_product
  end

  def new
    @cart = current_user.carts.build
  end

  def create
    @cart = current_user.carts.build(params:[:user_id])
  end

  def update
    @cart = current_user.carts.update(params:[:user_id])
    # add_product(@product)
    request.referrer, notice: "Product added to your cart!"

    # set_product
    # @cart = self
    # @product.add_to_cart
    #
    # if @cart.update(cart_params)
    #    notice: "Profile updated"
    # else
    #   notice: "something went wrong"
    # end
  end

  private

  def cart_params
     params.require(:cart).permit(:amount, selected_products: [])
  end

  def set_product
    # @product = Product.find(params[:product_id]) # or simply :id ?
  end

  # def set_user
  #   @user = User.find(params[:user_id])
  # end
end
