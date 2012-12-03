class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :movie_id
      t.integer :showing_id
      t.integer :number_of_seats
      t.string :customer_name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
