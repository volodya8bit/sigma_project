# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :category do
    category_id {Faker::Number.digit}
    title { Faker::Lorem.word }
    published { [true, false].sample }
  end
end
