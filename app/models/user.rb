class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :selected_products, through: :carts, source: :product
  has_one :profile, dependent: :destroy
  has_one :cart, dependent: :destroy

  validates :email, presence:true
  validates :password, presence:true

  def has_profile?
      profile.present? && profile.persisted?
  end

end
