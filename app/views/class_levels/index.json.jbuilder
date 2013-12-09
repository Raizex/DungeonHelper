json.array!(@class_levels) do |class_level|
  json.extract! class_level, :level, :class_id, :character_id
  json.url class_level_url(class_level, format: :json)
end
