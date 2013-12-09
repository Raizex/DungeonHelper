require 'test_helper'

class ClassLevelsControllerTest < ActionController::TestCase
  setup do
    @class_level = class_levels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_levels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_level" do
    assert_difference('ClassLevel.count') do
      post :create, class_level: { character_id: @class_level.character_id, class_id: @class_level.class_id, level: @class_level.level }
    end

    assert_redirected_to class_level_path(assigns(:class_level))
  end

  test "should show class_level" do
    get :show, id: @class_level
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @class_level
    assert_response :success
  end

  test "should update class_level" do
    patch :update, id: @class_level, class_level: { character_id: @class_level.character_id, class_id: @class_level.class_id, level: @class_level.level }
    assert_redirected_to class_level_path(assigns(:class_level))
  end

  test "should destroy class_level" do
    assert_difference('ClassLevel.count', -1) do
      delete :destroy, id: @class_level
    end

    assert_redirected_to class_levels_path
  end
end
