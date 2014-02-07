json.array!(@promises) do |promise|
  json.extract! promise, :id, :title, :description, :image_url
  json.url promise_url(promise, format: :json)
end
