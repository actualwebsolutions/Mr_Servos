require 'test_helper'

class IgrejasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:igrejas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create igreja" do
    assert_difference('Igreja.count') do
      post :create, :igreja => { }
    end

    assert_redirected_to igreja_path(assigns(:igreja))
  end

  test "should show igreja" do
    get :show, :id => igrejas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => igrejas(:one).to_param
    assert_response :success
  end

  test "should update igreja" do
    put :update, :id => igrejas(:one).to_param, :igreja => { }
    assert_redirected_to igreja_path(assigns(:igreja))
  end

  test "should destroy igreja" do
    assert_difference('Igreja.count', -1) do
      delete :destroy, :id => igrejas(:one).to_param
    end

    assert_redirected_to igrejas_path
  end
end
