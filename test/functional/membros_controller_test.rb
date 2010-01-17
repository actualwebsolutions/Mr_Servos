require 'test_helper'

class MembrosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:membros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create membro" do
    assert_difference('Membro.count') do
      post :create, :membro => { }
    end

    assert_redirected_to membro_path(assigns(:membro))
  end

  test "should show membro" do
    get :show, :id => membros(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => membros(:one).to_param
    assert_response :success
  end

  test "should update membro" do
    put :update, :id => membros(:one).to_param, :membro => { }
    assert_redirected_to membro_path(assigns(:membro))
  end

  test "should destroy membro" do
    assert_difference('Membro.count', -1) do
      delete :destroy, :id => membros(:one).to_param
    end

    assert_redirected_to membros_path
  end
end
