require 'test_helper'

class PathfinderClassesControllerTest < ActionController::TestCase
  setup do
    @pathfinder_class = pathfinder_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pathfinder_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pathfinder_class" do
    assert_difference('PathfinderClass.count') do
      post :create, pathfinder_class: { armor_proficiencies: @pathfinder_class.armor_proficiencies, base_attack_bonuses: @pathfinder_class.base_attack_bonuses, base_saves: @pathfinder_class.base_saves, class_abilities: @pathfinder_class.class_abilities, class_description: @pathfinder_class.class_description, class_name: @pathfinder_class.class_name, class_skills: @pathfinder_class.class_skills, hit_dice: @pathfinder_class.hit_dice, weapon_proficiencies: @pathfinder_class.weapon_proficiencies }
    end

    assert_redirected_to pathfinder_class_path(assigns(:pathfinder_class))
  end

  test "should show pathfinder_class" do
    get :show, id: @pathfinder_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pathfinder_class
    assert_response :success
  end

  test "should update pathfinder_class" do
    patch :update, id: @pathfinder_class, pathfinder_class: { armor_proficiencies: @pathfinder_class.armor_proficiencies, base_attack_bonuses: @pathfinder_class.base_attack_bonuses, base_saves: @pathfinder_class.base_saves, class_abilities: @pathfinder_class.class_abilities, class_description: @pathfinder_class.class_description, class_name: @pathfinder_class.class_name, class_skills: @pathfinder_class.class_skills, hit_dice: @pathfinder_class.hit_dice, weapon_proficiencies: @pathfinder_class.weapon_proficiencies }
    assert_redirected_to pathfinder_class_path(assigns(:pathfinder_class))
  end

  test "should destroy pathfinder_class" do
    assert_difference('PathfinderClass.count', -1) do
      delete :destroy, id: @pathfinder_class
    end

    assert_redirected_to pathfinder_classes_path
  end
end
