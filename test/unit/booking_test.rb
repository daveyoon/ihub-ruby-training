require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  def setup
    @hotel = Hotel.create
  end
  
  test "number of rooms should decrease when I make a booking" do 
    original_number_of_guests = @hotel.rooms_booked
    @booking = Booking.create(:hotel_id => @hotel.id)
    assert_equal @hotel.rooms_booked, original_number_of_guests + 1
  end

  
  # test "the truth" do
  #   assert true
  # end
end
