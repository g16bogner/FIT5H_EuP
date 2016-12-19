json.extract! registration, :id, :name, :email, :how_heard, :event_id, :created_at, :updated_at
json.url registration_url(registration, format: :json)