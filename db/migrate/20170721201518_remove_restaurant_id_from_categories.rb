class RemoveRestaurantIdFromCategories < ActiveRecord::Migration[5.1]
  def change
    remove_column :categories, :restaurant_id
  end
end
