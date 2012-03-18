require 'test_helper'

class PrzyjazdiesControllerTest < ActionController::TestCase
  setup do
    @przyjazdy = przyjazdies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:przyjazdies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create przyjazdy" do
    assert_difference('Przyjazdy.count') do
      post :create, przyjazdy: @przyjazdy.attributes
    end

    assert_redirected_to przyjazdy_path(assigns(:przyjazdy))
  end

  test "should show przyjazdy" do
    get :show, id: @przyjazdy.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @przyjazdy.to_param
    assert_response :success
  end

  test "should update przyjazdy" do
    put :update, id: @przyjazdy.to_param, przyjazdy: @przyjazdy.attributes
    assert_redirected_to przyjazdy_path(assigns(:przyjazdy))
  end

  test "should destroy przyjazdy" do
    assert_difference('Przyjazdy.count', -1) do
      delete :destroy, id: @przyjazdy.to_param
    end

    assert_redirected_to przyjazdies_path
  end
end
