class Job < ApplicationRecord
  has_many :initial_abilities, class_name: "JobsInitialAbility"

  def rolled_abilities
    initial_abilities.map(&:rolled_ability).join("/")
  end

end
