json.extract! user_preference, :id, :vehicle, :price, :cuisine, :dietary_restrictions, :entertainment_type, :physical_activity, :shopping_venue, :created_at, :updated_at
json.url user_preference_url(user_preference, format: :json)
