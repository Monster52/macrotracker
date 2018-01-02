class Goal < ApplicationRecord
  belongs_to :user

  validates :protein, presence: :true
  validates :carbohydrate, presence: :true
  validates :fat, presence: :true
end
