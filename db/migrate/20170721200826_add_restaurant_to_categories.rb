class AddRestaurantToCategories < ActiveRecord::Migration[5.1]
  def change
    add_reference :categories, :restaurant, foreign_key: true
  end
end
