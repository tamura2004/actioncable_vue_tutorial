class JobsInitialAbility < ApplicationRecord
  belongs_to :job
  belongs_to :ability

  def rolled_ability
    "#{ability.name}：#{roll}"
  end

  def roll
    number, bonus = value.split(/d\+/i).map(&:to_i)
    number.times.map{|i|rand(6)+1}.inject(&:+) + bonus
  end

end
