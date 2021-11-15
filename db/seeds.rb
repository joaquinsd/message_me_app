# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Message.destroy_all
6.times do |i|
  User.create(username: "User_#{i}", password: '123456')
end

10.times do |i|
  u = User.all.sample
  Message.create(body: "This is a sample message from #{u.username}", user: u)
end
