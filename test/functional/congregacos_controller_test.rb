require 'test_helper'

class CongregacosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:congregaco)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create congregaco" do
    assert_difference('Congregaco.count') do
      post :create, :congregaco => { }
    end

    assert_redirected_to congregaco_path(assigns(:congregaco))
  end

  test "should show congregaco" do
    get :show, :id => congregaco(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => congregaco(:one).to_param
    assert_response :success
  end

  test "should update congregaco" do
    put :update, :id => congregaco(:one).to_param, :congregaco => { }
    assert_redirected_to congregaco_path(assigns(:congregaco))
  end

  test "should destroy congregaco" do
    assert_difference('Congregaco.count', -1) do
      delete :destroy, :id => congregaco(:one).to_param
    end

    assert_redirected_to congregaco_path
  end
end
