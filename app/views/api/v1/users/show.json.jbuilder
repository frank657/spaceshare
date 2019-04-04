json.extract! @user, :id, :username, :manager
json.spaces @user.spaces do |space|
  json.extract! space, :id, :name, :district, :address_details, :available_spots, :price, :picture, :user_id, :wifi, :sofa_area, :coffee, :beer, :purified_air
end
json.bookings @user.bookings do |booking|
  json.extract! booking, :id, :date, :user_id, :space_id
end
