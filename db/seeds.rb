# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


 # admin user
json = ActiveSupport::JSON.decode(File.read('db/seeds/users.json'))

User.delete_all
 json.each do |a|
   User.create!(a)
 end