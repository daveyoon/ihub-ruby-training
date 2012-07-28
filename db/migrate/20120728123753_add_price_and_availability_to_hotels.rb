class AddPriceAndAvailabilityToHotels < ActiveRecord::Migration
  def change
    add_column :hotels, :rooms_booked, :integer
    add_column :hotels, :total_rooms, :integer
    add_column :hotels, :price, :integer        
  end
end
