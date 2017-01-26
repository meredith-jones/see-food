module RestaurantsHelper
  include HTTParty

  def search_by_location(latitude, longitude)
    headers = { "Authorization" => "Bearer #{ENV['YELP_ACCESS_TOKEN']}" }
    query = {
      "latitude" => latitude,
      "longitude" => longitude
    }

    HTTParty.get(
      "https://api.yelp.com/v3/businesses/search",
      :query => query,
      :headers => headers
    )
  end

  def search_by_zip(zip_code)
    headers = { "Authorization" => "Bearer #{ENV['YELP_ACCESS_TOKEN']}" }
    query = {
      "location" => zip_code
    }

    HTTParty.get(
      "http://api.yelp.com/v3/businesses/search",
      :query => query,
      :headers => headers
    )
  end
end
