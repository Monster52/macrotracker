class CalendarService

	def initialize(params)
		@goal = params[:goal]
		@tracker = params[:tracker]
	end

	# def highlight
	# 	if check_protein && check_carbohydrate && check_fat
	# 		true
	# 		@tracker.posted_today.each do |tracker|
	# 			tracker.met = true
	# 			tracker.met_date = tracker.created_at
	# 		end
	# 	else
	# 		false
	# 	end
	# end

	private

	def tracker_percent
		if @tracker.posted_today.count > 0
  	   macro = MacroService.new({protein: @tracker.pluck(:protein).inject(:+),
  			   											carbohydrate: @tracker.pluck(:carbohydrate).inject(:+), 
  		  												fat: @tracker.pluck(:fat).inject(:+)})
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