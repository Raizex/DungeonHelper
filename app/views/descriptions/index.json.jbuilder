json.array!(@descriptions) do |description|
  json.extract! description, :name, :alignment, :player, :deity, :homeland, :gender, :height, :weight, :eyes, :hair
  json.url description_url(description, format: :json)
end
