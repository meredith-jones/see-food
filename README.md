[![Build Status](https://travis-ci.org/meredith-jones/see-food.svg?branch=development)](https://travis-ci.org/meredith-jones/see-food)

# seeFood API
Backend for seeFood app


:pizza: :stew: :sushi: :spaghetti: :bento: :hamburger:

###### Built on RAILS 5
    bundle install
    rails db:migrate
    rails server
###### Run Tests
    bundle exec rspec

## Deployed to Heroku
[Taco API](https://taco-api.herokuapp.com/tacos)

## Documentation

All restaurants have following properties

Field | Description
------|------------
**name** | Name of the food's restaurant-of-origin
**image_url** | Link to picture of food
**phone_number** | Phone number of restaurant
**address1** | Restaurant's street address
**address2** | Restaurant's suite number, etc.
**city** | Restaurant's city
**state** | Restaurant's state
**zip_code** | Restaurant's zip code
**longitude** | Restaurant's longitude
**latitude** | Restaurant's latitude

###Endpoints
    GET /restaurants
####Sample Response
```JSON
[
{
  "name":"Shumi Ramen",
  "image_url":"https://s3-media3.fl.yelpcdn.com/bphoto/6oH169dvksoUBWE60osnsw/o.jpg",
  "phone_number":"+15109408695",
  "address1":"18911 Lake Chabot Rd",
  "address2":"Ste 1",
  "city":"Castro Valley",
  "state":"CA",
  "zip_code":"94546",
  "longitude":-122.09134,
  "latitude":37.70864
},
{
  "name":"Luccas Italian Delicatessen",
  "image_url":"https://s3-media3.fl.yelpcdn.com/bphoto/7G0QYmLiMObBGfzKTKPo-w/o.jpg",
  "phone_number":"+15105372222",
  "address1":"3121 Castro Valley Blvd",
  "address2":"",
  "city":"Castro Valley",
  "state":"CA",
  "zip_code":"94546",
  "longitude":-122.08075,
  "latitude":37.69526
},
...
]
```
