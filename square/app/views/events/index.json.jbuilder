json.array!(@events) do |event|
  json.extract! event, :name, :year, :country_id
  json.url event_url(event, format: :json)
end
