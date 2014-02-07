json.array!(@pinholes) do |pinhole|
  json.extract! pinhole, :id, :title, :description, :image_url
  json.url pinhole_url(pinhole, format: :json)
end
