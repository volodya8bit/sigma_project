# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email {Faker::Internet.email}
    password {Faker::Internet.password}
    role {Faker::Number.rand_in_range(1,2)}
  end
end
