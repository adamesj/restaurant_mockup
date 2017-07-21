require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  it "saves to the database" do
    restaurant = Restaurant.new(
      name: "Low Cal Calzone Zone",
      street_address: "123 Penny Lane",
      zip_code: "12345"
    )

    restaurant.save

    expect(Restaurant.first.name).to eq "Low Cal Calzone Zone"
  end


  it "does not save without a name" do
    restaurant = Restaurant.new(
      street_address: "123 Penny Lane",
      zip_code: "12345"
    )

    restaurant.save

    expect(Restaurant.count).to eq 0
  end

  it "does not save without a street address" do
    restaurant = Restaurant.new(
      name: "My Restaurant",
      zip_code: "12345"
    )

    restaurant.save

    expect(Restaurant.count).to eq 0
  end

  it "does not save without a 5 digit zip code" do
    restaurant = Restaurant.new(
      name: "Low Cal Calzone Zone",
      street_address: "123 Penny Lane",
      zip_code: "one two three four"
    )

    restaurant.save

    expect(restaurant.errors[:zip_code]).to include("should be 12345 or 12345-1234")
  end

end