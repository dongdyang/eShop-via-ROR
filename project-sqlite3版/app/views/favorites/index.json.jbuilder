json.array!(@favorites) do |favorite|
  json.extract! favorite, :id, :rating
  json.url favorite_url(favorite, format: :json)
end
