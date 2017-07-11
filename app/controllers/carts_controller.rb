class CartsController < ApplicationController
before_action :set_product

  # def create
  #   @cart = current_user.carts.create(cart_params)
  #
  #   redirect_to @cart.product, notice: "Product(s) added to your cart!"
  # end

  def edit
  end

  def add_to_cart
    added_products = []
  end

  def update
    if @cart.update(cart_params)
      redirect_to edit_cart_path(@cart), notice: "Cart  updated"
    else
      render :edit
    end
  end

def add_to_cart
end

  private

  def cart_params
     params.require(:cart).permit(:amount)
  end

  def set_product
    @product = Product.find(params[:product_id])
  end

end
