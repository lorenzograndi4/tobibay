class CartsController < ApplicationController
before_action :authenticate_user!
before_action :set_product
before_action :set_cart
# before_action :set_user # Done via authenticate_user
#
# selected_products = [] # done in initialize

  # def index
  #   @carts = Cart.find(params[:user_id])
  #   selected_products = @carts.products
  # end

  def initialize (user_id: amount: selected_products:)
    @selected_products = []
    @user_id = set_user
  end

  def show
    set_cart
  end

  def new
    @cart = current_user.carts.build
  end

  def create
    @cart = current_user.carts.build(cart_params)
    @cart.save
    redirect_to @cart.product, notice: "Product(s) added to your cart!"
  end

  def update
    set_product
    # @cart = self
    @product.add_to_cart

    if @cart.update(cart_params)
      notice: "Profile updated"
    else
      notice: "something went wrong"
    end
  end

  private

  def set_cart
    @cart = Cart.find_by(user_id: current_user)
  end

  def cart_params
     params.require(:cart).permit(:user_id :selected_products)
  end

  def set_product
    @product = Product.find(params[:product_id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
