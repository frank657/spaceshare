# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

# Booking.destroy_all
# p "Deteled bookings"
# Space.destroy_all
# p "Deteled spaces"
# User.destroy_all
# p "Deteled users"
Booking.delete_all if Rails.env.development?
Space.delete_all if Rails.env.development?
User.delete_all if Rails.env.development?



user_1 = User.create!(open_id: 1, username: Faker::FunnyName.name, manager: true)

user_2 = User.create!(open_id: 2, username: Faker::FunnyName.name, manager: true)

user_3 = User.create!(open_id: 3, username: Faker::FunnyName.name, manager: true)

user_4 = User.create!(open_id: 4, username: Faker::FunnyName.name, manager: false)

user_5 = User.create!(open_id: 5, username: Faker::FunnyName.name, manager: false)

# p "Created #{User.count} users"

space_1 = Space.create!(name: 'WeWork Candor Plaza',district: 'Pudong', address_details: '118 Rong Ke Lu', user_id: user_1.id, picture: 'https://cdn.wework.com/locations/image/9c07167a-e9b1-11e8-bae7-1202be33576a/webimage-1459BF4E-C3FD-4456-9B9774704591CB57.jpg', price: "$100", available_spots: rand(1..100))

space_2 = Space.create!(name: 'WeWork Century Plaza',district: 'Huangpu', address_details: '627 Middle Huaihai Road', user_id: user_1.id, picture: 'https://workdesign.com/wp-content/uploads/2012/11/shift_shared3-720x506.jpg', price: "$110", available_spots: rand(1..100))

space_3 = Space.create!(name: 'WeWork Fuhui Building',district: 'Xuhui', address_details: '989 Changle Road', user_id: user_1.id, picture: 'https://www.wework.com/public/images/Web_72DPI-20180612_WeWork_Dalian_Lu_-_Common_Areas_-_Couch_Area-4__1_.jpg', price: "$105", available_spots: rand(1..100))

space_4 = Space.create!(name: 'WeWork Tiantong Road',district: 'Changning', address_details: '328 Tiantong Road', user_id: user_1.id, picture: 'https://cdn-images-1.medium.com/max/1200/1*dK_M76iViHxJwLJO2hSbCA.jpeg', price: "$120", available_spots: rand(1..100))

space_5 = Space.create!(name: 'Xnode Super Space',district: "Jing'an", address_details: '1 South Wuning Road', user_id: user_2.id, picture: 'http://www.yoursnews.in/wp-content/uploads/2016/12/workplace-e1483086769797.jpg', price: "$100", available_spots: rand(1..100))

space_6 = Space.create!(name: 'Xnode Cool Work',district: 'Putuo', address_details: '1155 Fangdian Road', user_id: user_2.id, picture: 'https://cdn.vox-cdn.com/thumbor/jvL7qBzhkKaqhdz_1UM7k1nDneU=/0x0:7360x4912/1200x800/filters:focal(1331x2365:2507x3541)/cdn.vox-cdn.com/uploads/chorus_image/image/60768185/20180321_Chelsea_6th_Floor_1.0.jpg', price: "$90)", available_spots: rand(1..100))

space_7 = Space.create!(name: 'Xnode Fancy Office',district: 'Hongkou', address_details: '818 Shenchang Road', user_id: user_2.id, picture: 'https://cdn.wework.com/locations/image/8e49219a-dc7d-11e8-a0a4-1202be33576a/webimage-AEC23640-1D03-4494-896DF3670A5DF6DB.jpg', price: "$95", available_spots: rand(1..100))

space_8 = Space.create!(name: 'Xnode Center' ,district: 'Yangpu', address_details: '398 Huoshan Road', user_id: user_2.id, picture: 'https://pbs.twimg.com/media/Dw2Q521UUAEKXJk.jpg', price: "$105", available_spots: rand(1..100))

space_9 = Space.create!(name:"Naked Hub Minhang", district: 'Minhang', address_details: '500 Dalian Road', user_id: user_3.id, picture: 'https://thespaces.com/wp-content/uploads/2015/04/Neuehouse.jpg', price: "$80)", available_spots: rand(1..100))

space_10 = Space.create!(name: 'Naked Hub Baoshan',district: 'Baoshan', address_details: '1229 Century Avenue', user_id: user_3.id, picture: 'https://www.homejournal.hk/wp-content/uploads/2017/07/naked-hub.jpg', price: '$85', available_spots: rand(1..100))

# p "Created #{Space.count} spaces"

booking_1 = Booking.create!(space_id: rand(space_1.id..space_10.id), user_id: rand(user_1.id..user_5.id), date: Faker::Date.forward(60))

booking_2 = Booking.create!(space_id: rand(space_1.id..space_10.id), user_id: rand(user_1.id..user_5.id), date: Faker::Date.forward(60))

booking_3 = Booking.create!(space_id: rand(space_1.id..space_10.id), user_id: rand(user_1.id..user_5.id), date: Faker::Date.forward(60))

booking_4 = Booking.create!(space_id: rand(space_1.id..space_10.id), user_id: rand(user_1.id..user_5.id), date: Faker::Date.forward(60))

booking_5 = Booking.create!(space_id: rand(space_1.id..space_10.id), user_id: rand(user_1.id..user_5.id), date: Faker::Date.forward(60))

booking_6 = Booking.create!(space_id: rand(space_1.id..space_10.id), user_id: rand(user_1.id..user_5.id), date: Faker::Date.forward(60))

booking_7 = Booking.create!(space_id: rand(space_1.id..space_10.id), user_id: rand(user_1.id..user_5.id), date: Faker::Date.forward(60))

booking_8 = Booking.create!(space_id: rand(space_1.id..space_10.id), user_id: rand(user_1.id..user_5.id), date: Faker::Date.forward(60))

booking_9 = Booking.create!(space_id: rand(space_1.id..space_10.id), user_id: rand(user_1.id..user_5.id), date: Faker::Date.forward(60))

booking_10 = Booking.create!(space_id: rand(space_1.id..space_10.id), user_id: rand(user_1.id..user_5.id), date: Faker::Date.forward(60))

booking_11 = Booking.create!(space_id: rand(space_1.id..space_10.id), user_id: rand(user_1.id..user_5.id), date: Faker::Date.forward(60))

booking_12 = Booking.create!(space_id: rand(space_1.id..space_10.id), user_id: rand(user_1.id..user_5.id), date: Faker::Date.forward(60))

booking_13 = Booking.create!(space_id: rand(space_1.id..space_10.id), user_id: rand(user_1.id..user_5.id), date: Faker::Date.forward(60))

booking_14 = Booking.create!(space_id: rand(space_1.id..space_10.id), user_id: rand(user_1.id..user_5.id), date: Faker::Date.forward(60))

booking_15 = Booking.create!(space_id: rand(space_1.id..space_10.id), user_id: rand(user_1.id..user_5.id), date: Faker::Date.forward(60))

booking_16 = Booking.create!(space_id: rand(space_1.id..space_10.id), user_id: rand(user_1.id..user_5.id), date: Faker::Date.forward(60))

booking_17 = Booking.create!(space_id: rand(space_1.id..space_10.id), user_id: rand(user_1.id..user_5.id), date: Faker::Date.forward(60))

booking_18 = Booking.create!(space_id: rand(space_1.id..space_10.id), user_id: rand(user_1.id..user_5.id), date: Faker::Date.forward(60))

booking_19 = Booking.create!(space_id: rand(space_1.id..space_10.id), user_id: rand(user_1.id..user_5.id), date: Faker::Date.forward(60))

booking_20 = Booking.create!(space_id: rand(space_1.id..space_10.id), user_id: rand(user_1.id..user_5.id), date: Faker::Date.forward(60))

# p "Created #{Booking.count} bookings"

Space.all.each do |s|
  s.price = rand(20..100)
  s.wifi = [true, false].sample
  s.sofa_area = [true, false].sample
  s.coffee = [true, false].sample
  s.beer = [true, false].sample
  s.purified_air = [true, false].sample
  s.full_address = "#{s.address_details}, #{s.district}, Shanghai"
  s.save
end

p "Created #{User.count} users"
p "Created #{Booking.count} bookings"
p "Created #{Space.count} spaces"
