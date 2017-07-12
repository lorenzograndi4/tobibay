class CartsController < ApplicationController
before_action :authenticate_user!
before_action :set_product
before_action :set_user

selected_products = []

  # def index
  #   @carts = Cart.find(params[:user_id])
  #   selected_products = @carts.products
  # end

  def initialize (user_id: product_id: amount: selected_products:)
    @selected_products = []
    @user_id = set_user
    @product = set_product
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
  end

  private

  def cart_params
     params.require(:cart)
  end

  def set_product
    @product = Product.find(params[:product_id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
