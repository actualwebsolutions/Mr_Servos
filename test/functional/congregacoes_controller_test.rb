require 'test_helper'

class CongregacoesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:congregacoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create congregacoes" do
    assert_difference('Congregacoes.count') do
      post :create, :congregacoes => { }
    end

    assert_redirected_to congregacoes_path(assigns(:congregacoes))
  end

  test "should show congregacoes" do
    get :show, :id => congregacoes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => congregacoes(:one).to_param
    assert_response :success
  end

  test "should update congregacoes" do
    put :update, :id => congregacoes(:one).to_param, :congregacoes => { }
    assert_redirected_to congregacoes_path(assigns(:congregacoes))
  end

  test "should destroy congregacoes" do
    assert_difference('Congregacoes.count', -1) do
      delete :destroy, :id => congregacoes(:one).to_param
    end

    assert_redirected_to congregacoes_path
  end
end
