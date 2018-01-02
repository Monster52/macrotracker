FactoryBot.define do
  factory :tracker do |f|
    f.protein 30
    f.carbohydrate 60
    f.fat 10
    f.user_id nil
  end
end