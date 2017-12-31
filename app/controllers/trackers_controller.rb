class TrackersController < ApplicationController
	def index
	end

	def show
		@tracker = Tracker.find(params[:id])
	end

	def new
		@tracker = Tracker.new
	end

	def create
		@tracker = Tracker.new(tracker_params)
		@tracker.user = current_user

  	if @tracker.save
      flash[:notice] = "Daily tracker was saved successfully."
      redirect_to profiles_index_path
    else
      flash.now[:alert] = "Error creating daily tracker. Please try again."
      render :new
    end
	end

	def edit
  	@tracker = Tracker.find(params[:id])
  end

  def update
  	@tracker = Tracker.find(params[:id])
  	@tracker.assign_attributes(tracker_params)

  	if @tracker.save
      flash[:notice] = "Tracker was updated successfully."
      redirect_to profiles_index_path
    else
      flash.now[:alert] = "Error updating tracker. Please try again."
      render :edit
    end
  end

	private

	def tracker_params
		params.require(:tracker).permit(:protein, :carbohydrate, :fat, :met)
	end
end
