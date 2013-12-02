json.array!(@characters) do |character|
  json.extract! character, :name, :summary, :user_id, :description_id
  json.url character_url(character, format: :json)
end
