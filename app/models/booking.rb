class Booking < ActiveRecord::Base
  attr_accessible :end_date, :hotel_id, :name, :start_date
  belongs_to :hotel
  
  after_create :checkin

  def checkin 
    self.hotel.guest_checkin
  end
  
  def checkout 
    self.hotel.guest_checkout
  end
end
