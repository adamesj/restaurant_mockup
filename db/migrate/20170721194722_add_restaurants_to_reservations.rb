class AddRestaurantsToReservations < ActiveRecord::Migration[5.1]
  def change
    add_reference :reservations, :restaurant, foreign_key: true
  end
end
