# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unless User.any?
  User.first_or_create(email: 'admin@admin.com', password: '12345678', role: 2)
end

unless Category.any?
  Category.create(title: "булочки", published: true)
end
