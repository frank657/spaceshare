# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

user_1 = User.create!(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, profile_picture:'http://y2.ifengimg.com/a/2014_39/30bf500f445be4e.jpg', manager: true)

user_2 = User.create!(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, profile_picture:'https://www.fs.usda.gov/research/people/ritsdocs/drlederle.jpg', manager: true)

user_3 = User.create!(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, profile_picture:'https://www.atlantichousefm.com/assets/img/CATLEY_LAKEMAN-Andy.jpg', manager: true)

user_4 = User.create!(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, profile_picture:'http://www.crazykelvin.com/aboutme/images/derek-luke-2013.jpg', manager: false)

user_5 = User.create!(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, profile_picture:'http://webcom.colostate.edu/china/files/2016/05/Chenda-Deng-Profile-photo.png', manager: false)

space_1 = Space.create!(name: 'WeWork Candor Plaza',district: 'Pudong', address_details: '118 Rong Ke Lu, Bldg 3, 1/F', amenities:'Wifi, Coffee maker, Beer, Sofa area, Air purifier' , user_id: 1, picture: 'https://cdn.wework.com/locations/image/9c07167a-e9b1-11e8-bae7-1202be33576a/webimage-1459BF4E-C3FD-4456-9B9774704591CB57.jpg', price: 100)

space_2 = Space.create!(name: 'WeWork Century Plaza',district: 'Huangpu', address_details: '4F 627 Middle Huaihai Road', amenities:'Wifi, Coffee maker, Beer, Sofa area, Air purifier' , user_id: 1, picture: 'https://workdesign.com/wp-content/uploads/2012/11/shift_shared3-720x506.jpg', price: 110)

space_3 = Space.create!(name: 'WeWork Fuhui Building',district: 'Xuhui', address_details: '989 Changle Road', amenities:'Wifi, Coffee maker, Beer, Sofa area, Air purifier' , user_id: 1, picture: 'https://www.wework.com/public/images/Web_72DPI-20180612_WeWork_Dalian_Lu_-_Common_Areas_-_Couch_Area-4__1_.jpg', price: 105)

space_4 = Space.create!(name: 'WeWork Tiantong Road',district: 'Changning', address_details: '3F, No. 328 Tiantong Road', amenities:'Wifi, Coffee maker, Beer, Sofa area, Air purifier' , user_id: 1, picture: 'https://cdn-images-1.medium.com/max/1200/1*dK_M76iViHxJwLJO2hSbCA.jpeg', price: 120)

space_5 = Space.create!(name: 'Xnode Super Space',district: "Jing'an", address_details: '3F, 1 South Wuning Road', amenities:'Wifi, Sofa area, Air purifier' , user_id: 2, picture: 'http://www.yoursnews.in/wp-content/uploads/2016/12/workplace-e1483086769797.jpg', price: 100)

space_6 = Space.create!(name: 'Xnode Cool Work',district: 'Putuo', address_details: '4F, 1155 Fangdian Road', amenities:'Wifi, Sofa area, Air purifier' , user_id: 2, picture: 'https://cdn.vox-cdn.com/thumbor/jvL7qBzhkKaqhdz_1UM7k1nDneU=/0x0:7360x4912/1200x800/filters:focal(1331x2365:2507x3541)/cdn.vox-cdn.com/uploads/chorus_image/image/60768185/20180321_Chelsea_6th_Floor_1.0.jpg', price: 90)

space_7 = Space.create!(name: 'Xnode Fancy Office',district: 'Hongkou', address_details: '818 Shenchang Road', amenities:'Wifi, Sofa area, Air purifier' , user_id: 2, picture: 'https://cdn.wework.com/locations/image/8e49219a-dc7d-11e8-a0a4-1202be33576a/webimage-AEC23640-1D03-4494-896DF3670A5DF6DB.jpg', price: 95)

space_8 = Space.create!(name: 'Xnode Center' ,district: 'Yangpu', address_details: 'EBA Center T2 5F, 398 Huoshan Road', amenities:'Wifi, Sofa area, Air purifier' , user_id: 2, picture: 'https://pbs.twimg.com/media/Dw2Q521UUAEKXJk.jpg', price: 105)

space_9 = Space.create!(name:"Naked Hub Minhang", district: 'Minhang', address_details: 'Block D, Siemens Building, 500 Dalian Road', amenities: 'Wifi, Sofa area, Air purifier', user_id: 3, picture: 'https://thespaces.com/wp-content/uploads/2015/04/Neuehouse.jpg', price: 80)

space_10 = Space.create!(name: 'Naked Hub Baoshan',district: 'Baoshan', address_details: '2F 1229 Century Avenue', amenities:'Wifi, Sofa area, Air purifier', user_id: 3, picture: "https://www.homejournal.hk/wp-content/uploads/2017/07/naked-hub.jpg", price: 85)
