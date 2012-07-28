class Hotel < ActiveRecord::Base    
  attr_accessible :city, :name, :rooms_booked, :total_rooms, :price
  
  has_many :bookings
  
  def to_csv
    "#{self.city}, #{self.name},#{self.price}, #{self.rooms_available} "
  end
  
  def rooms_available
    total_rooms - rooms_booked
  end
  
  def guest_checkin
    rooms_booked += 1
    save
  end
  
  def guest_checkout
    rooms_booked -= 1
    save  
  end
end
