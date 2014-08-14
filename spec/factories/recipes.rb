# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :recipe do
    title { Faker::Commerce.product_name }
    text { Faker::Lorem.paragraph(4) }
    published { [true, false].sample }
    ingredient { Faker::Lorem.sentence }
    association :category
    association :parser
  end
end
