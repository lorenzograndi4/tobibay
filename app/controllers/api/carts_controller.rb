class Api::CartsController < ApplicationController
skip_before_action :verify_authenticity_token

  def index
    set_cart
    render status: 200, json: {
      carts: @cart
    }.to_json
  end

  def update
    set_cart
    if @cart.update(cart_params)
      render status: 200, json: {
        message: "Cart updated",
        Cart: @cart,
        Products: @cart.selected_products
      }.to_json
    else
       render status: 422, json: {
        message: "The cart could not be updated",
        errors: cart.errors
      }.to_json
    end
  end

  private
  def set_user
    @user = User.find(params[:user_id])
  end

  def set_cart
    @cart = Cart.find_by user_id: params[:user_id]
  end

  def cart_params
    params.require(:cart).permit(:user_id, :selected_products)
  end

end
