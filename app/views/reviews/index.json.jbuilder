json.array!(@reviews) do |review|
  json.extract! review, :title, :auther, :content, :rating, :product_id
  json.url review_url(review, format: :json)
end