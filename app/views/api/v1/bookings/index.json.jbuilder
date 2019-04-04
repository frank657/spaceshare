json.bookings do
  json.array! @bookings do |booking|
    json.extract! booking, :id, :date, :user_id, :space_id
  end
end
