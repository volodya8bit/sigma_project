# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_list = [
    [ "admin@sigma.com", "12345678", 2 ],
    [ "user@sigma.com", "12345678", 1 ]
]

category_list = [
    ["Булочки", true],
    ["Супы", true],
    ["Салаты", true]
]

user_list.each do |email, password, role|
  User.create( email: email, password: password, role: role )
end

category_list.each do |title, published|
  Category.create( title: title, published: published)
end

for value in (1..10)
  Parser.create(title: Faker::Lorem.word ,url: Faker::Internet.url(host = 'yandex.ru/', path = value))
end

10.times do |i|
  Recipe.create(title:Faker::Lorem.word ,text: Faker::Lorem.paragraph{i}, published: [true, false].sample)
end




# unless User.any?
#   User.create(email: Faker::Internet.email, password: Faker::Internet.password, role: "Admin")
#   User.first_or_create(email: 'admin2@sigma.com', password: '12345678', role: 2)
#   User.create(email: "admin@sigma.com", password: "12345678", role: 2)
#   User.create(email: "user@user.com", password: "12345678", role: 1)
#   User.create(email: "adm@adm.net", password: "12345678", role: 2)
# end

# unless Category.any?
#   Category.create(title: "булочки", published: true)
# end
