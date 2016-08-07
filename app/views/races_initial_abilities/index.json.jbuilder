json.array!(@races_initial_abilities) do |races_initial_ability|
  json.extract! races_initial_ability, :id, :race_id, :ability_id, :value
  json.url races_initial_ability_url(races_initial_ability, format: :json)
end
