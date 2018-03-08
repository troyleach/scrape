json.extract! image, :id, :url, :src, :alt, :created_at, :updated_at
json.url image_url(image, format: :json)
