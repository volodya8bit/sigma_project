# Read about factories at https://github.com/thoughtbot/factory_girl
Faker::Config.locale = 'ru'
FactoryGirl.define do
  factory :category do
    title { Faker::Commerce.product_name }
    published { [true, false].sample }
  end
end
