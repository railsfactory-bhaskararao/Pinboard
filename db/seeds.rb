# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
if Role.where(name: 'User').empty?
  Role.create(name: "User")
end
if Role.where(name: 'Administrator').empty?
  Role.create(name: 'Administrator')
end
if User.where(email: "admin@pinboad.com").empty?
  user = User.create(first_name: "admin", last_name:"super", email: "admin@pinboad.com",password: "password")
  if user.valid?
  	user.role = Role.find_by_name('Administrator')
  end
end
