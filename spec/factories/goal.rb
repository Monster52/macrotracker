FactoryBot.define do
  factory :goal do |f|
    f.protein 30
    f.carbohydrate 10
    f.fat 60
    f.user_id nil
  end
end