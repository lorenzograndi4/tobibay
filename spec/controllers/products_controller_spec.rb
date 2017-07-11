require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:price) }
  end

  # describe "associations" do
  #   it { is_expected.to belong_to(:user) }
  #   it { is_expected.to have_many(:users) }
  # end
end
