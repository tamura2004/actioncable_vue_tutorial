class RacesInitialAbility < ApplicationRecord
  belongs_to :race
  belongs_to :ability

  delegate :name, to: :ability

  def rolled_ability
    "#{ability.name}：#{roll}"
  end

  def roll
    number, bonus = value.split(/d\+/i).map(&:to_i)
    number.times.map{|i|rand(6)+1}.inject(&:+) + bonus
  end

end
