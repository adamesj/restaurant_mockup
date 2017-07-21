class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.integer   :party
      t.text      :message
      t.datetime  :reservation_date
      t.timestamps
    end
  end
end
