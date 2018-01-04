FactoryBot.define do
  factory :tracker do |f|
    f.protein 60
    f.carbohydrate 25
    f.fat 150
    f.user_id nil
  end
end