json.array!(@stories) do |story|
  json.extract! story, :id, :title, :token, :content
  json.url story_url(story, format: :json)
end
