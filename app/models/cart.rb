class Cart < ApplicationRecord
  belongs_to :user
  # belongs_to :product # do I really need this?

  def add_product(product)
    # set_product
    # @cart = self
    @product = product
    @cart.selected_products << product
  end



end
