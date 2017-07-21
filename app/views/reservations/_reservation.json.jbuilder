json.extract! reservation, :id, :party, :message, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
