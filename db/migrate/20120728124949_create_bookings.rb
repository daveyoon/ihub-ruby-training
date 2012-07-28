class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :hotel_id
      t.string :name
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
