class Api::CartsController < ApplicationController
  def index
    set_cart
    render status: 200, json: {
      carts: @cart
    }.to_json
  end



private
def set_user
  @user = User.find(params[:user_id])
end

def set_cart
  @cart = Cart.find_by user_id: params[:user_id]
end


end
