# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(id: 1, email: 'konradthelad@testtest.com', password: 'password', password_confirmation: 'password')

painscore_list = [
  [9, '2017-03-01'],
  [9, '2017-03-02'],
  [9, '2017-03-03'],
  [10, '2017-03-04'],
  [4, '2017-03-05'],
  [3, '2017-03-06'],
  [6, '2017-03-07'],
  [7, '2017-03-08'],
  [10, '2017-03-09'],
  [7, '2017-03-10'],
  [3, '2017-03-11'],
  [4, '2017-03-12'],
  [10, '2017-03-13'],
  [6, '2017-03-14'],
  [7, '2017-03-15'],
  [8, '2017-03-16'],
  [9, '2017-03-17'],
  [10, '2017-03-18'],
  [5, '2017-03-19'],
  [6, '2017-03-20'],
  [5, '2017-03-21'],
  [4, '2017-03-22'],
  [3, '2017-03-23']
]
 activity_list = [
   ['running',9, '2017-03-01'],
   ['jogging',8, '2017-03-02'],
   ['cycling',7, '2017-03-03'],
   ['woodworking',8, '2017-03-04'],
   ['snooker',3, '2017-03-05'],
   ['darts',2, '2017-03-06'],
   ['snooker',4, '2017-03-07'],
   ['ping pong',8, '2017-03-08'],
   ['cycling',9, '2017-03-09'],
   ['ping pong',6, '2017-03-10'],
   ['snooker',5, '2017-03-11'],
   ['darts',5, '2017-03-12'],
   ['darts', 8, '2017-03-13'],
   ['jogging',5, '2017-03-14'],
   ['running',6, '2017-03-15'],
   ['cycling',7, '2017-03-16'],
   ['cycling',8, '2017-03-17'],
   ['cycling',9, '2017-03-18'],
   ['tennis',9, '2017-03-19'],
   ['tennis',6, '2017-03-20'],
   ['cycling',8, '2017-03-21'],
   ['tennis',7, '2017-03-22'],
   ['tennis',6, '2017-03-23']
 ]
foodlog_list = [
  ['melon', '2017-03-01'],
  ['oranges', '2017-03-01'],
  ['risotto', '2017-03-01'],
  ['bananas', '2017-03-02'],
  ['rice', '2017-03-02'],
  ['tomatoes', '2017-03-03'],
  ['bread', '2017-03-03'],
  ['coffee', '2017-03-03'],
  ['lasagne', '2017-03-04'],
  ['lentils', '2017-03-05'],
  ['polenta', '2017-03-06'],
  ['pasta', '2017-03-07'],
  ['tomatoes', '2017-03-08'],
  ['bread', '2017-03-08'],
  ['coffee', '2017-03-08'],
  ['chicken', '2017-03-09'],
  ['pasta', '2017-03-10'],
  ['mozzarella', '2017-03-11'],
  ['beef', '2017-03-12'],
  ['tomatoes', '2017-03-12'],
  ['bread', '2017-03-12'],
  ['coffee', '2017-03-12'],
  ['confit of duck', '2017-03-13'],
  ['pasta', '2017-03-14'],
  ['rice', '2017-03-15'],
  ['stir fry', '2017-03-16'],
  ['tomatoes', '2017-03-17'],
  ['bread', '2017-03-17'],
  ['coffee', '2017-03-17'],
  ['spring greens', '2017-03-18'],
  ['cucumber', '2017-03-19'],
  ['mangetout', '2017-03-20'],
  ['cheese', '2017-03-21'],
  ['mangetout', '2017-03-22'],
  ['tomatoes', '2017-03-23'],
  ['bread', '2017-03-23'],
  ['coffee', '2017-03-23']
 ]


foodlog_list.each do |food, date|
  Foodlog.create!(user_id: 1, food: food, customdate: date)
end
activity_list.each do |activity, exertion, date|
  Activity.create!(user_id: 1, name: activity, exertion: exertion, customdate: date)
end
 painscore_list.each do |score, date|
  Painscore.create!(user_id: 1, score: score, customdate: date)
end
