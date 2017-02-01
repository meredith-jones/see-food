module RestaurantsHelper
  include HTTParty

  def search_by_location(latitude, longitude)
    headers = { "Authorization" => "Bearer #{ENV['YELP_ACCESS_TOKEN']}" }
    query = {
      "latitude" => latitude,
      "longitude" => longitude,
      "categories" => "restaurants",
      "open_now" => true,
      "limit" => 50
    }

    response = HTTParty.get(
      "https://api.yelp.com/v3/businesses/search",
      :query => query,
      :headers => headers
    )
    parse_restaurant_info(response.parsed_response)
  end

  def search_by_zip(zip_code)
    headers = { "Authorization" => "Bearer #{ENV['YELP_ACCESS_TOKEN']}" }
    query = {
      "location" => zip_code,
      "categories" => "restaurants",
      "open_now" => true,
      "limit" => 50
    }

    response = HTTParty.get(
      "http://api.yelp.com/v3/businesses/search",
      :query => query,
      :headers => headers
    )
    parse_restaurant_info(response.parsed_response)
  end

  def parse_restaurant_info(restaurants_json)
    restaurants = restaurants_json['businesses'].map do | restaurant |
      {
        "name" => restaurant['name'],
        "image_url" => restaurant['image_url'],
        "phone_number" => restaurant['phone'],
        "address1" => restaurant['location']['address1'],
        "address2" => restaurant['location']['address2'],
        "city" => restaurant['location']['city'],
        "state" => restaurant['location']['state'],
        "zip_code" => restaurant['location']['zip_code'],
        "longitude" => restaurant['coordinates']['longitude'],
        "latitude" => restaurant['coordinates']['latitude']
      }
    end
  end

end
