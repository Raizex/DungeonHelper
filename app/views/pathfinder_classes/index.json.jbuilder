json.array!(@pathfinder_classes) do |pathfinder_class|
  json.extract! pathfinder_class, :class_name, :class_description, :hit_dice, :weapon_proficiencies, :armor_proficiencies, :class_skills, :class_abilities, :base_attack_bonuses, :base_saves
  json.url pathfinder_class_url(pathfinder_class, format: :json)
end
