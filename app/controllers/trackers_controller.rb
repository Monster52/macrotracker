class TrackersController < ApplicationController
	def index
    @user = current_user
    @trackers = current_user.trackers.posted_today
    @goal_met = GoalMetService.new({goal: current_user.goal, trackers: current_user.trackers.posted_today}).highlight
    
    macro = MacroService.new({protein: @user.trackers.posted_today.pluck(:protein).inject(:+),
                              carbohydrate: @user.trackers.posted_today.pluck(:carbohydrate).inject(:+), 
                              fat: @user.trackers.posted_today.pluck(:fat).inject(:+)})

    @protein_percent = macro.protein
    @carbohydrate_percent = macro.carbohydrate
    @fat_percent = macro.fat
	end

	def show
		@tracker = Tracker.find(params[:id])
	end

	def new
		@tracker = Tracker.new
	end

	def create
		@tracker = current_user.trackers.build(tracker_params)

  	if @tracker.save
      flash[:notice] = "Daily tracker was saved successfully."
      redirect_to profiles_index_path
    else
      flash.now[:alert] = "Error creating daily tracker. Please try again."
      render :new
    end
	end

	private

	def tracker_params
		params.require(:tracker).permit(:protein, :carbohydrate, :fat, :met)
	end
end
