require 'test_helper'

class PojazdiesControllerTest < ActionController::TestCase
  setup do
    @pojazdy = pojazdies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pojazdies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pojazdy" do
    assert_difference('Pojazdy.count') do
      post :create, pojazdy: @pojazdy.attributes
    end

    assert_redirected_to pojazdy_path(assigns(:pojazdy))
  end

  test "should show pojazdy" do
    get :show, id: @pojazdy.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pojazdy.to_param
    assert_response :success
  end

  test "should update pojazdy" do
    put :update, id: @pojazdy.to_param, pojazdy: @pojazdy.attributes
    assert_redirected_to pojazdy_path(assigns(:pojazdy))
  end

  test "should destroy pojazdy" do
    assert_difference('Pojazdy.count', -1) do
      delete :destroy, id: @pojazdy.to_param
    end

    assert_redirected_to pojazdies_path
  end
end
