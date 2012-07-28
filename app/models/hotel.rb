class Hotel < ActiveRecord::Base    
  attr_accessible :city, :name, :rooms_booked, :total_rooms, :price
  
  has_many :bookings
    
  def to_csv
    "#{self.city}, #{self.name},#{self.price}, #{self.rooms_available} "
  end
  
  def rooms_available
    self.total_rooms - self.rooms_booked
  end
  
  def guest_checkin
    self.rooms_booked += 1
    save
  end
  
  def guest_checkout
    self.rooms_booked -= 1
    save  
  end
end
