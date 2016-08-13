class RacesInitialAbilitiesController < ApplicationController
  before_action :set_race, only: [:update, :destroy]

  # GET /races_initial_abilities
  # GET /races_initial_abilities.json
  def index
    results = []
    Race.all.each do |race|
      result = {}
      result["id"] = race.id
      result["name"] = race.name

      race.initial_abilities.each do |init|
        result[init.ability.name] = init.value
      end
      results << result
    end
    gon.records = results

    gon.options = {
      dataSchema: abilities_schema.merge(
        id:nil,
        name:nil,
      ),
      colHeaders: [
        "種族",
        *abilities
      ],
      columns: [
        {
          data: "name",
          disableVisualSelection: true,
          readOnly: true,
        },
        *abilities_columns
      ],
    }
  end

  # GET /races_initial_abilities/1
  # GET /races_initial_abilities/1.json
  def show
  end

  # GET /races_initial_abilities/new
  def new
    @races_initial_ability = RacesInitialAbility.new
  end

  # GET /races_initial_abilities/1/edit
  def edit
  end

  # POST /races_initial_abilities
  # POST /races_initial_abilities.json
  def create
    @races_initial_ability = RacesInitialAbility.new(races_initial_ability_params)

    respond_to do |format|
      if @races_initial_ability.save
        format.html { redirect_to @races_initial_ability, notice: 'Races initial ability was successfully created.' }
        format.json { render :show, status: :created, location: @races_initial_ability }
      else
        format.html { render :new }
        format.json { render json: @races_initial_ability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /races_initial_abilities/1
  # PATCH/PUT /races_initial_abilities/1.json
  def update

    error = false
    races_initial_ability_params.each do |ability_name,value|
      @ability = Ability.find_by(name: ability_name)
      @init = @race.initial_abilities.find_by(ability: @ability)
      if @init
        if value.size > 0
          @init.value = value
          @init.save
        else
          @init.destroy
        end
      else
        @init = RacesInitialAbility.new
        @init.race = @race
        @init.ability = @ability
        @init.value = value
        @init.save
      end
    end

    respond_to do |format|
      if error
        format.html { render :edit }
        format.json { head :no_content }
      else
        format.html { redirect_to @init, notice: 'Projects monthly allocation was successfully updated.' }
        format.json { head :no_content }
      end
    end
  end

  # DELETE /races_initial_abilities/1
  # DELETE /races_initial_abilities/1.json
  def destroy
    @races_initial_ability.destroy
    respond_to do |format|
      format.html { redirect_to races_initial_abilities_url, notice: 'Races initial ability was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_race
      @race = Race.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def races_initial_ability_params
      params.permit(abilities_symbols)
    end

    def abilities
      @abilities ||= Ability.pluck(:name)
    end

    def abilities_symbols
      abilities.map(&:to_sym)
    end

    def abilities_columns
      abilities.map do |a|
        {data: a}
      end
    end

    def abilities_schema
      Hash[abilities.map{|a|[a,nil]}]
    end
end
