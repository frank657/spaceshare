json.spaces do
  json.array! @spaces do |space|
    json.extract! space, :id, :name, :address_details, :picture
  end
end
