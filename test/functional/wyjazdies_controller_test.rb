require 'test_helper'

class WyjazdiesControllerTest < ActionController::TestCase
  setup do
    @wyjazdy = wyjazdies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wyjazdies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wyjazdy" do
    assert_difference('Wyjazdy.count') do
      post :create, wyjazdy: @wyjazdy.attributes
    end

    assert_redirected_to wyjazdy_path(assigns(:wyjazdy))
  end

  test "should show wyjazdy" do
    get :show, id: @wyjazdy.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wyjazdy.to_param
    assert_response :success
  end

  test "should update wyjazdy" do
    put :update, id: @wyjazdy.to_param, wyjazdy: @wyjazdy.attributes
    assert_redirected_to wyjazdy_path(assigns(:wyjazdy))
  end

  test "should destroy wyjazdy" do
    assert_difference('Wyjazdy.count', -1) do
      delete :destroy, id: @wyjazdy.to_param
    end

    assert_redirected_to wyjazdies_path
  end
end
