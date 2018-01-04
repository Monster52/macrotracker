require 'faker'

FactoryBot.define do
  factory :user do |f|
  	f.id (1..9).to_a.sample
    f.email Faker::Internet.email
    f.password "welcome"
  end
end

