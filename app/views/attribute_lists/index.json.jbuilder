json.array!(@attribute_lists) do |attribute_list|
  json.extract! attribute_list, 
  json.url attribute_list_url(attribute_list, format: :json)
end
