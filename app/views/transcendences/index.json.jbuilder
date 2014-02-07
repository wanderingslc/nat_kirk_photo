json.array!(@transcendences) do |transcendence|
  json.extract! transcendence, :id, :title, :description, :image_url
  json.url transcendence_url(transcendence, format: :json)
end
