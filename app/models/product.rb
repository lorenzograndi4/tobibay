class Product < ApplicationRecord

  has_many :purchasers, through: :carts, source: :user
end
