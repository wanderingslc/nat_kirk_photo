json.array!(@mementos) do |memento|
  json.extract! memento, :id, :title, :description, :image_url
  json.url memento_url(memento, format: :json)
end
