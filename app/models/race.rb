class Race < ApplicationRecord
  has_many :initial_abilities, class_name: "RacesInitialAbility"

  def rolled_abilities
    initial_abilities.map(&:rolled_ability).join("/")
  end

end