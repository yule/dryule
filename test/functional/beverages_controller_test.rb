require 'test_helper'

class BeveragesControllerTest < ActionController::TestCase
  setup do
    @beverage = beverages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beverages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beverage" do
    assert_difference('Beverage.count') do
      post :create, :beverage => @beverage.attributes
    end

    assert_redirected_to beverage_path(assigns(:beverage))
  end

  test "should show beverage" do
    get :show, :id => @beverage.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @beverage.to_param
    assert_response :success
  end

  test "should update beverage" do
    put :update, :id => @beverage.to_param, :beverage => @beverage.attributes
    assert_redirected_to beverage_path(assigns(:beverage))
  end

  test "should destroy beverage" do
    assert_difference('Beverage.count', -1) do
      delete :destroy, :id => @beverage.to_param
    end

    assert_redirected_to beverages_path
  end
end
