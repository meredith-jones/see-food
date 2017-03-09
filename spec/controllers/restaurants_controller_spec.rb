require 'rails_helper'
require 'restaurants_helper'

RSpec.describe RestaurantsController, type: :controller do
include RestaurantsHelper
let(:restaurants) { search_by_zip("94030") }


# it 'responds with JSON' do

#   p restaurants
#   expect {
#     JSON.parse(response.body)
#   }.to_not raise_error
# end


end
