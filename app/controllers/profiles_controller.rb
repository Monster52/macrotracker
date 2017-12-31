class ProfilesController < ApplicationController
  def index
  	@user = current_user
    @goal = current_user.goal

    if @user.trackers.last.updated_at.to_date == Date.today
  	   macro = MacroService.new({protein: @user.trackers.pluck(:protein).inject(:+),
  			   											carbohydrate: @user.trackers.pluck(:carbohydrate).inject(:+), 
  		  												fat: @user.trackers.pluck(:fat).inject(:+)})

      @protein_percent = macro.protein
      @carbohydrate_percent = macro.carbohydrate
      @fat_percent = macro.fat
    else
      @tracker = Tracker.new
      @tracker.user_id = @user.id
    end
  end
end
