class Tracker < ApplicationRecord
	after_initialize :set_default_values
  
	scope :posted_today, -> { where("Date(created_at) = Date(?)", Time.now) }

  belongs_to :user

  private

  def set_default_values
    self.protein ||= 0.to_f
    self.carbohydrate ||= 0.to_f
    self.fat ||= 0.to_f
  end
end
