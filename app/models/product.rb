class Product < ApplicationRecord
  has_many :carts, dependent: :destroy
  has_many :purchasers, through: :carts, source: :user

  validates :name, :price, presence: true


  def add_to_cart(cart)
    # set_product
    cart = cart
    @product = self
    cart.selected_products << @product
  end
end
