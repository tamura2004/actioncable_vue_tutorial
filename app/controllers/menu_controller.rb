class MenuController < ApplicationController
  layout "menu"

  def index
    gon.races = Race.includes(:initial_abilities => :ability).map{|race|
      {
        id: race.id,
        name: race.name,
        initialAbilities: race.initial_abilities.map{|ability|
          {
            id:ability.id,
            name: ability.name,
            value: ability.value.to_i
          }
        }
      }
    }

    gon.jobs = Job.all.map{|job|
      {
        id: job.id,
        name: job.name
      }
    }

    gon.menus = Page.all
    gon.menu = Page.first
  end

end
