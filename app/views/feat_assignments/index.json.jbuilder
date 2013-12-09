json.array!(@feat_assignments) do |feat_assignment|
  json.extract! feat_assignment, :character_id, :feat_id
  json.url feat_assignment_url(feat_assignment, format: :json)
end
