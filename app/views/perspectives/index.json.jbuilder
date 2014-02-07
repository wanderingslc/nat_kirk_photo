json.array!(@perspectives) do |perspective|
  json.extract! perspective, :id, :title, :description, :image_url
  json.url perspective_url(perspective, format: :json)
end
