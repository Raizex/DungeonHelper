json.array!(@feats) do |feat|
  json.extract! feat, :name, :type, :description, :prerequisites, :prerequisite_feats, :link
  json.url feat_url(feat, format: :json)
end
