json.array!(@races) do |race|
  json.extract! race, :race_name, :race_description, :size, :attribute_modifiers, :default_languages, :available_languages
  json.url race_url(race, format: :json)
end
