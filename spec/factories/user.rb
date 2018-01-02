FactoryBot.define do
  factory :user do |f|
    f.email Faker::Internet.email
    f.password "welcome"
  end
end