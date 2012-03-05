# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.find_by_email("aesolbakken@gmail.com")
if !user then
  user = User.new(:first_name => 'Alf', :last_name => 'Solbakken', :email => "aesolbakken@gmail.com", :password => "jalla12345", :password_confirmation => "jalla12345")
  user.save!
end
