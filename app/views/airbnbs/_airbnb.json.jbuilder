json.extract! airbnb, :id, :name, :address, :description, :price_per_night, :number_of_guests, :created_at, :updated_at
json.url airbnb_url(airbnb, format: :json)
