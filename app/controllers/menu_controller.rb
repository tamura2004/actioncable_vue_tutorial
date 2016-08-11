class MenuController < ApplicationController
  layout "menu"

  def index
    @races = Race.all
    @jobs = Job.all
  end
end
