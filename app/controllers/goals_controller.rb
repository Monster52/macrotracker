class GoalsController < ApplicationController
	def index
  	@user = current_user
  	@goal = @user.goal
  end

  def show
  	@goal = current_user.goal.all
  end

  def new
  	@goal = Goal.new
  end

  def create
  	@goal = Goal.new(goal_params)
  	@goal.user = current_user

  	if @goal.save
      flash[:notice] = "Goal was saved successfully."
      redirect_to profiles_index_path
    else
      flash.now[:alert] = "Error creating goal. Please try again."
      render :new
    end
  end

  def edit
  	@goal = Goal.find(params[:id])
  end

  def update
  	@goal = Goal.find(params[:id])
  	@goal.assign_attributes(goal_params)

  	if @goal.save
      flash[:notice] = "Goal was saved successfully."
      redirect_to profiles_index_path
    else
      flash.now[:alert] = "Error editing goal. Please try again."
      render :edit
    end
  end

  private

  def goal_params
  	params.require(:goal).permit(:protein, :carbohydrate, :fat)
  end
end
