# frozen_string_literal: true
# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end

User.create!(email: 'q@q',
             password: 'q',
             password_confirmation: 'q',
             admin: true)
#
%w(Revolver
   Please_Please_Me
   Let_It_Be
   Abbey_Road
   Meet_The_Beatles
   Help!
   A_Hard_Days_Night
   Rubber_Soul
   Magical_Mystery_Tour
   White_Album
   Sgt_Peppers_Lonely_Hearts_Club_Band
   Love
   Beatles_For_Sale
   Yellow_Submarine).each do |name|
  album = name.to_s
  Record.create!(artist: 'The Beatles',
                title: album,
                press_date: 1960,
                price: 15.0)
end
#
# %w(antony jeff matt jason alex chelsea dave harry).each do |name|
#   email = "#{name} is my friend"
#   # next if User.exists? email: email
#   Comment.create!(comment: email,
#                   user: User.find(1),
#                   album_id: '1')
# end
