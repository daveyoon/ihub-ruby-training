class AddPriceAndAvailabilityToHotels < ActiveRecord::Migration
  def change
    add_column :hotels, :rooms_booked, :integer, :default => 0
    add_column :hotels, :total_rooms, :integer, :default => 0 
    add_column :hotels, :price, :integer, :default => 0        
  end
end
