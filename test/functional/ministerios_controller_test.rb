require 'test_helper'

class MinisteriosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ministerios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ministerios" do
    assert_difference('Ministerios.count') do
      post :create, :ministerios => { }
    end

    assert_redirected_to ministerios_path(assigns(:ministerios))
  end

  test "should show ministerios" do
    get :show, :id => ministerios(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => ministerios(:one).to_param
    assert_response :success
  end

  test "should update ministerios" do
    put :update, :id => ministerios(:one).to_param, :ministerios => { }
    assert_redirected_to ministerios_path(assigns(:ministerios))
  end

  test "should destroy ministerios" do
    assert_difference('Ministerios.count', -1) do
      delete :destroy, :id => ministerios(:one).to_param
    end

    assert_redirected_to ministerios_path
  end
end
