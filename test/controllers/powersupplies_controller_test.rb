require 'test_helper'

class PowersuppliesControllerTest < ActionController::TestCase
  setup do
    @powersupply = powersupplies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:powersupplies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create powersupply" do
    assert_difference('Powersupply.count') do
      post :create, powersupply: { connector: @powersupply.connector, dimensions: @powersupply.dimensions, intel_support: @powersupply.intel_support, maker: @powersupply.maker, max_power: @powersupply.max_power, model: @powersupply.model, notes: @powersupply.notes, output_ratings: @powersupply.output_ratings, price: @powersupply.price, ps_type: @powersupply.ps_type, rails_12v: @powersupply.rails_12v, sli_support: @powersupply.sli_support }
    end

    assert_redirected_to powersupply_path(assigns(:powersupply))
  end

  test "should show powersupply" do
    get :show, id: @powersupply
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @powersupply
    assert_response :success
  end

  test "should update powersupply" do
    patch :update, id: @powersupply, powersupply: { connector: @powersupply.connector, dimensions: @powersupply.dimensions, intel_support: @powersupply.intel_support, maker: @powersupply.maker, max_power: @powersupply.max_power, model: @powersupply.model, notes: @powersupply.notes, output_ratings: @powersupply.output_ratings, price: @powersupply.price, ps_type: @powersupply.ps_type, rails_12v: @powersupply.rails_12v, sli_support: @powersupply.sli_support }
    assert_redirected_to powersupply_path(assigns(:powersupply))
  end

  test "should destroy powersupply" do
    assert_difference('Powersupply.count', -1) do
      delete :destroy, id: @powersupply
    end

    assert_redirected_to powersupplies_path
  end
end
