# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :recipe do
    association :category
    text { Faker::Lorem.paragraph(4) }
    published { [true, false].sample }
    ingredient { Faker::Lorem.paragraphs(4) }

  end
end
