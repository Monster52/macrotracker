require 'rails_helper'

RSpec.describe Tracker, type: :model do

	describe "attributes" do
    it { should have_db_column(:protein) }
    it { should have_db_column(:carbohydrate) }
    it { should have_db_column(:fat) }
    it { should have_db_column(:met) }
    it { should have_db_column(:met_date) }
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
