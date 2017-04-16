json.array!(@posts) do |post|
  json.extract! post, :id, :title, :byline, :author, :body
  json.url post_url(post, format: :json)
end
