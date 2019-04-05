json.extract! @user, :id, :username, :manager
json.spaces @user.spaces do |space|
  json.extract! space, :id, :name, :district, :address_details, :available_spots, :price, :picture, :user_id, :wifi, :sofa_area, :coffee, :beer, :purified_air
end
json.bookings @user.bookings do |booking|
      json.id booking.id
      json.date booking.date.strftime("%A, %b %d")
      json.user_id booking.user_id
      json.space do
      json.extract! booking.space, :name, :picture
  end
end

