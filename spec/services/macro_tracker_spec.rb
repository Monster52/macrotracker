require './app/services/macro_service'
require 'rails_helper'
require 'factory_bot_rails'

describe "MacroService" do

	describe "Public Methods" do
		before :each do
			@user = FactoryBot.build(:user)
			@goal = FactoryBot.build(:goal, user_id: @user.id)
			@tracker = FactoryBot.build(:tracker, user_id: @user_id)
			@macro = MacroService.new({protein: @tracker.protein, carbohydrate: @tracker.carbohydrate, fat: @tracker.fat})
		end

		it "has protein" do
			expect(@macro.protein).to_not be_nil
		end

		it "has carbohydrate" do
			expect(@macro.carbohydrate).to_not be_nil
		end

		it "has fat" do
			expect(@macro.fat).to_not be_nil
		end	
	end
end