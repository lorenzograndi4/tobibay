class Product < ApplicationRecord
  has_many :carts
  has_many :purchasers, through: :carts, source: :user

  validates :name, :price, presence: true
end
