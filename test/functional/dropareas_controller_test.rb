require 'test_helper'

class DropareasControllerTest < ActionController::TestCase
  setup do
    @droparea = dropareas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dropareas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create droparea" do
    assert_difference('Droparea.count') do
      post :create, droparea: { height: @droparea.height, left: @droparea.left, top: @droparea.top, width: @droparea.width }
    end

    assert_redirected_to droparea_path(assigns(:droparea))
  end

  test "should show droparea" do
    get :show, id: @droparea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @droparea
    assert_response :success
  end

  test "should update droparea" do
    put :update, id: @droparea, droparea: { height: @droparea.height, left: @droparea.left, top: @droparea.top, width: @droparea.width }
    assert_redirected_to droparea_path(assigns(:droparea))
  end

  test "should destroy droparea" do
    assert_difference('Droparea.count', -1) do
      delete :destroy, id: @droparea
    end

    assert_redirected_to dropareas_path
  end
end
