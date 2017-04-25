# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: 'a@a',
             password: 'a',
             password_confirmation: 'a',
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
