class CreateCategorizations < ActiveRecord::Migration[5.1]
  def change
    create_table :categorizations do |t|
      t.integer :category_id
      t.integer :restaurant_id
    end
  end
end
