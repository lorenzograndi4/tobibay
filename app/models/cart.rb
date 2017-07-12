class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :product

  def initialize
    selected_products = []
  end
end
