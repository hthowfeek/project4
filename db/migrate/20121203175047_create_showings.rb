class CreateShowings < ActiveRecord::Migration
  def change
    create_table :showings do |t|
      t.integer :movie_id
      t.time :showing_time
      t.integer :number_of_available_seats

      t.timestamps
    end
  end
end
