class GoalMetService

	def initialize(params)
		@goal = params[:goal]
		@trackers = params[:trackers]
	end

	def highlight
		if check_protein && check_carbohydrate && check_fat
			true
			@trackers.posted_today.each do |tracker|
				tracker.met = true
				tracker.met_date = tracker.created_at
				tracker.save!
			end
		else
			false
		end
	end

	private

	def tracker_percent
		if @trackers.posted_today.count > 0
  	   macro = MacroService.new({protein: @trackers.posted_today.pluck(:protein).inject(:+),
  			   											carbohydrate: @trackers.posted_today.pluck(:carbohydrate).inject(:+), 
  		  												fat: @trackers.posted_today.pluck(:fat).inject(:+)})
  	 end
	end

	def check_protein
		if tracker_percent.protein <= @goal.protein + 5 || tracker_percent.protein >= @goal.protein - 5
			true
		else
			false
		end
	end

	def check_carbohydrate
		if tracker_percent.carbohydrate <= @goal.carbohydrate + 5 || tracker_percent.carbohydrate >= @goal.carbohydrate - 5
			true
		else
			false
		end
	end

	def check_fat
		if tracker_percent.fat <= @goal.fat + 5 || tracker_percent.fat >= @goal.fat - 5
			true
		else
			false
		end
	end

end