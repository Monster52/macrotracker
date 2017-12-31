class Tracker < ApplicationRecord
	scope :posted_today, -> { where("Date(created_at) = Date(?)", Time.now) }

  belongs_to :user
end
