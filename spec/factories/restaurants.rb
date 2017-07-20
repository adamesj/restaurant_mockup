FactoryGirl.define do
  factory :restaurant do
    name            Faker::Company.name
    street_address  Faker::Address.street_address
    zip_code        Faker::Address.zip_code

    factory :invalid_restaurant do
      name nil
    end
  end
end