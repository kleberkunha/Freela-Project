json.extract! post, :id, :name, :author, :intro, :description, :created_at, :updated_at
json.url post_url(post, format: :json)
