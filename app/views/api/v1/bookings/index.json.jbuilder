json.bookings do
  json.array! @bookings do |booking|
    json.id booking.id
    json.date booking.date.strftime("%A, %b %d")
    json.user_id booking.user_id
    json.space do
      json.extract! booking.space, :name, :picture
    end
  end
end
