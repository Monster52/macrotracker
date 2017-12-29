class ProfilesController < ApplicationController
  def index
  	@user = current_user
  	@goal = current_user.goal
  end
end
