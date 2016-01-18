json.array!(@shops) do |shop|
  json.extract! shop, :id, :name, :telephone, :location
  json.url shop_url(shop, format: :json)
end
