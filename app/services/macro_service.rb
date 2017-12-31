class MacroService

	def initialize(params)
		@protein = params[:protein]
		@carbohydrate = params[:carbohydrate]
		@fat = params[:fat]
	end

	def protein
		convert_protein
	end

	def carbohydrate
		convert_carbohydrate
	end

	def fat
		convert_fat
	end

	private

	def total
		@protein + @carbohydrate + @fat
	end

	def convert_protein
		(@protein.to_f / total) * 100
	end

	def convert_carbohydrate
		(@carbohydrate.to_f / total) * 100
	end

	def convert_fat
		(@fat.to_f / total) * 100
	end
end