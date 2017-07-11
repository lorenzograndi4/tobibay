require 'rails_helper'
  RSpec.describe User, type: :model do
    describe "validations" do
      it { is_expected.to validate_presence_of(:name) }
      it { is_expected.to validate_presence_of(:address) }
    end

    describe "associations" do
      it { is_expected.to belongs_to(:user) }
      it { is_expected.to have_many(:products) }
    end
  end
