require 'test_helper'

class RacesInitialAbilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @races_initial_ability = races_initial_abilities(:one)
  end

  test "should get index" do
    get races_initial_abilities_url
    assert_response :success
  end

  test "should get new" do
    get new_races_initial_ability_url
    assert_response :success
  end

  test "should create races_initial_ability" do
    assert_difference('RacesInitialAbility.count') do
      post races_initial_abilities_url, params: { races_initial_ability: { ability_id: @races_initial_ability.ability_id, race_id: @races_initial_ability.race_id, value: @races_initial_ability.value } }
    end

    assert_redirected_to races_initial_ability_url(RacesInitialAbility.last)
  end

  test "should show races_initial_ability" do
    get races_initial_ability_url(@races_initial_ability)
    assert_response :success
  end

  test "should get edit" do
    get edit_races_initial_ability_url(@races_initial_ability)
    assert_response :success
  end

  test "should update races_initial_ability" do
    patch races_initial_ability_url(@races_initial_ability), params: { races_initial_ability: { ability_id: @races_initial_ability.ability_id, race_id: @races_initial_ability.race_id, value: @races_initial_ability.value } }
    assert_redirected_to races_initial_ability_url(@races_initial_ability)
  end

  test "should destroy races_initial_ability" do
    assert_difference('RacesInitialAbility.count', -1) do
      delete races_initial_ability_url(@races_initial_ability)
    end

    assert_redirected_to races_initial_abilities_url
  end
end
