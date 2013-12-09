require 'test_helper'

class FeatAssignmentsControllerTest < ActionController::TestCase
  setup do
    @feat_assignment = feat_assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feat_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feat_assignment" do
    assert_difference('FeatAssignment.count') do
      post :create, feat_assignment: { character_id: @feat_assignment.character_id, feat_id: @feat_assignment.feat_id }
    end

    assert_redirected_to feat_assignment_path(assigns(:feat_assignment))
  end

  test "should show feat_assignment" do
    get :show, id: @feat_assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feat_assignment
    assert_response :success
  end

  test "should update feat_assignment" do
    patch :update, id: @feat_assignment, feat_assignment: { character_id: @feat_assignment.character_id, feat_id: @feat_assignment.feat_id }
    assert_redirected_to feat_assignment_path(assigns(:feat_assignment))
  end

  test "should destroy feat_assignment" do
    assert_difference('FeatAssignment.count', -1) do
      delete :destroy, id: @feat_assignment
    end

    assert_redirected_to feat_assignments_path
  end
end
