json.array!(@gardens) do |garden|
  json.extract! garden, :id, :name, :garden_type, :structure, :started, :sun, :soil, :drainage, :location_id
  json.url garden_url(garden, format: :json)
end
