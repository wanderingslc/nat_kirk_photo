json.array!(@portraits) do |portrait|
  json.extract! portrait, :id, :title, :description, :image_url
  json.url portrait_url(portrait, format: :json)
end
