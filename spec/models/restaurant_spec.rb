require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  describe "attributes" do
    it { should have_db_column(:name) }
    it { should have_db_column(:address) }
    it { should have_db_column(:phone_number) }
    it { should have_db_column(:website) }
    it { should have_db_column(:created_at) }
    it { should have_db_column(:updated_at) }
  end

  describe "associations" do
    it { should have_many(:pictures) }
    it { should have_many(:likes).through(:pictures) }
  end
end