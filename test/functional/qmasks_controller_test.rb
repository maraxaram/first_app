require 'test_helper'

class QmasksControllerTest < ActionController::TestCase
  setup do
    @qmask = qmasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qmasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qmask" do
    assert_difference('Qmask.count') do
      post :create, :qmask => @qmask.attributes
    end

    assert_redirected_to qmask_path(assigns(:qmask))
  end

  test "should show qmask" do
    get :show, :id => @qmask.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @qmask.to_param
    assert_response :success
  end

  test "should update qmask" do
    put :update, :id => @qmask.to_param, :qmask => @qmask.attributes
    assert_redirected_to qmask_path(assigns(:qmask))
  end

  test "should destroy qmask" do
    assert_difference('Qmask.count', -1) do
      delete :destroy, :id => @qmask.to_param
    end

    assert_redirected_to qmasks_path
  end
end
