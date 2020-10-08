class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :studio_id
      t.integer :hours
      t.integer :price

      t.timestamps
    end
  end
end
