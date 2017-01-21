require 'rails_helper'

RSpec.describe Picture, type: :model do
  describe "attributes" do
    it { should have_db_column(:pic_url) }
    it { should have_db_column(:restaurant_id) }
    it { should have_db_column(:created_at) }
    it { should have_db_column(:updated_at) }
  end

  describe "associations" do
    it { should belong_to(:restaurant) }
    it { should have_many(:likes) }
  end
end
