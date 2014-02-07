json.array!(@social_concerns) do |social_concern|
  json.extract! social_concern, :id, :title, :description, :image_url
  json.url social_concern_url(social_concern, format: :json)
end
