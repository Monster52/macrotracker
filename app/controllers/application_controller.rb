class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_time_zone, if: :user_signed_in?

  private

  def set_time_zone
  	Time.zone = current_user.try(:time_zone) || "America/New_York"
  end
end
