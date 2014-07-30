# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :parser do
    title {Faker::Lorem.word}
    url {Faker::Internet.url}
  end
end
