json.array!(@gallery_2s) do |gallery_2|
  json.extract! gallery_2, :id, :description
  json.url gallery_2_url(gallery_2, format: :json)
end
