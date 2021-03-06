require 'rails_helper'


  RSpec.describe User, type: :model do
    describe "validations" do
      it { is_expected.to validate_presence_of(:email) }
      it { is_expected.to validate_presence_of(:password) }
    end

    describe "associations" do
      it { is_expected.to have_one(:profile) }
      it { is_expected.to have_many(:selected_products) }
    end

end
