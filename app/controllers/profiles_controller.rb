class ProfilesController < ApplicationController
  def index
  	@user = current_user
  	@goal = current_user.goal

  	macro = MacroService.new({protein: @user.tracker.protein,
  														carbohydrate: @user.tracker.carbohydrate, 
  														fat: @user.tracker.fat})

  	@protein_percent = macro.protein
  	@carbohydrate_percent = macro.carbohydrate
  	@fat_percent = macro.fat
  end
end
