json.extract! card, :id, :title, :url, :text, :created_at, :updated_at
json.url card_url(card, format: :json)
