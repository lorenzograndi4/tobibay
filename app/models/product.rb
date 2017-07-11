class Product < ApplicationRecord
  has_many :carts, dependent: :destroy
  has_many :purchasers, through: :carts, source: :user

  validates :name, :price, presence: true
end
