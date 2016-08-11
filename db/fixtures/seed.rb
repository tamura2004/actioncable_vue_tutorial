Ability.delete_all
Race.delete_all
RacesInitialAbility.delete_all
Job.delete_all
JobsInitialAbility.delete_all

abilities_names = %w(筋力 敏捷 耐久)

abilities_names.each_with_index do |name,id|
  Ability.seed do |s|
    s.id = id
    s.name = name
  end
end

races_initial_abilities = [
  %w(人間 human 3D+7 3D+7 3D+7),
  %w(エルフ elf 2D+8 4D+6 2D+8),
  %w(ドワーフ dwarf 4D+6 2D+8 4D+6)
]

races_initial_abilities.each_with_index do |values,id|
  name = values.shift
  label = values.shift
  Race.seed do |s|
    s.id = id
    s.name = name
    s.label = label
  end

  values.each_with_index do |value,ability_id|
    RacesInitialAbility.seed do |s|
      s.race_id = id
      s.ability_id = ability_id
      s.value = value
    end
  end
end

jobs_initial_abilities = [
  %w(戦士 fighter 5D+5 2D+8 2D+8),
  %w(僧侶 cleric 3D+7 3D+7 3D+7),
  %w(盗賊 thief 2D+8 5D+5 2D+8)
]

jobs_initial_abilities.each_with_index do |values,id|
  name = values.shift
  label = values.shift
  Job.seed do |s|
    s.id = id
    s.name = name
    s.label = label
  end

  values.each_with_index do |value,ability_id|
    JobsInitialAbility.seed do |s|
      s.job_id = id
      s.ability_id = ability_id
      s.value = value
    end
  end
end

