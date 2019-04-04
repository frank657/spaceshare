json.spaces do
  json.array! @spaces do |space|
    json.extract! space, :id, :name, :district, :address_details, :available_spots, :price, :picture, :latitude, :longitude, :user_id, :wifi, :sofa_area, :coffee, :beer, :purified_air
  end
end
