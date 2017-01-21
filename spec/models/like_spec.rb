require 'rails_helper'

RSpec.describe Like, type: :model do
  describe "attributes" do
    it { should have_db_column(:user_id) }
    it { should have_db_column(:picture_id) }
  end

  describe "associations" do
    it { should belong_to(:user) }
    it { should belong_to(:picture) }
  end
end
