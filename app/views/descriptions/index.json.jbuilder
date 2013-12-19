json.array!(@descriptions) do |description|
  json.extract! description, :alignment, :player, :deity, :homeland, :gender, :age, :height, :weight, :eyes, :hair
  json.url description_url(description, format: :json)
end
