class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string  :name
      t.string  :street_address
      t.string :zip_code
    end
  end
end
