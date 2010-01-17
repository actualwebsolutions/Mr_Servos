require 'test_helper'

class DesligamentosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:desligamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create desligamento" do
    assert_difference('Desligamento.count') do
      post :create, :desligamento => { }
    end

    assert_redirected_to desligamento_path(assigns(:desligamento))
  end

  test "should show desligamento" do
    get :show, :id => desligamentos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => desligamentos(:one).to_param
    assert_response :success
  end

  test "should update desligamento" do
    put :update, :id => desligamentos(:one).to_param, :desligamento => { }
    assert_redirected_to desligamento_path(assigns(:desligamento))
  end

  test "should destroy desligamento" do
    assert_difference('Desligamento.count', -1) do
      delete :destroy, :id => desligamentos(:one).to_param
    end

    assert_redirected_to desligamentos_path
  end
end
