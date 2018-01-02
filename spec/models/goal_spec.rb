require 'rails_helper'
require 'factory_bot_rails'

RSpec.describe Goal, type: :model do

 	describe "attributes" do
    it { should have_db_column(:protein) }
    it { should have_db_column(:carbohydrate) }
    it { should have_db_column(:fat) }
  end

  describe "associations" do
    it { should belong_to(:user) }
  end

  describe "validations" do
    it { should validate_presence_of(:protein) }
    it { should validate_presence_of(:carbohydrate) }
    it { should validate_presence_of(:fat) }
  end
end
