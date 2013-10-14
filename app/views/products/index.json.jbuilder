json.array!(@products) do |product|
  json.extract! product, :name, :content, :released_at, :cost, :image
  json.url product_url(product, format: :json)
end