json.array!(@posts) do |post|
  json.extract! post, :id, :name, :title, :content, :approved
  json.url post_url(post, format: :json)
end
