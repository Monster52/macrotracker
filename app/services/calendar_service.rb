class CalendarService

	def initialize(params)
		@goal = params[:goal]
		@tracker = params[:tracker]
	end

	def highlight
		tracker_percent = MacroService({protein: @tracker.protein, carbohydrate: @tracker.carbhoydrate, fat: @tracker.fat})
		if tracker_percent.protein == @goal.protein && tracker_percent.carbhoydrate == @goal.carbhoydrate && tracker_percent.fat == @goal.fat
			true
		else
			fasle
		end
	end
end