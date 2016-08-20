require "csv"

class MenuController < ApplicationController
  layout "menu"

  def index
    gon.races = Race.all.map{|race|
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

    table = CSV.table(Rails.root.join("db/fixtures/menu.csv"), encoding: "Shift_JIS:UTF-8")
    gon.menus = table.map(&:to_h)
  end

  def upload
    file = params[:file].path.to_s
    xlsx = Roo::Excelx.new(file)

    xlsx.each_row_streaming do |row|
      name,desc,id = row.map(&:value)
      Word.create(name:name, desc:desc, user:user, removed:false)
    end
    redirect_to :words
  end


end
