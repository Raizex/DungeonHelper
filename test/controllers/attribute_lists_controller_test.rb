require 'test_helper'

class AttributeListsControllerTest < ActionController::TestCase
  setup do
    @attribute_list = attribute_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attribute_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attribute_list" do
    assert_difference('AttributeList.count') do
      post :create, attribute_list: {  }
    end

    assert_redirected_to attribute_list_path(assigns(:attribute_list))
  end

  test "should show attribute_list" do
    get :show, id: @attribute_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attribute_list
    assert_response :success
  end

  test "should update attribute_list" do
    patch :update, id: @attribute_list, attribute_list: {  }
    assert_redirected_to attribute_list_path(assigns(:attribute_list))
  end

  test "should destroy attribute_list" do
    assert_difference('AttributeList.count', -1) do
      delete :destroy, id: @attribute_list
    end

    assert_redirected_to attribute_lists_path
  end
end
