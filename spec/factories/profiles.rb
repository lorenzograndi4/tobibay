FactoryGirl.define do
  factory :profile do
    name  { Faker::Name.first_name }
    address   { Faker::Name.last_name }
    #bio         { Faker::Lorem.sentence }
  end
end
