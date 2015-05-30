require 'test_helper'

class DramsControllerTest < ActionController::TestCase
  setup do
    @dram = drams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dram" do
    assert_difference('Dram.count') do
      post :create, dram: { cas_latency: @dram.cas_latency, ecc_support: @dram.ecc_support, maker: @dram.maker, model: @dram.model, notes: @dram.notes, price: @dram.price, series: @dram.series, size: @dram.size, speed: @dram.speed, timing: @dram.timing, type: @dram.type, voltage: @dram.voltage }
    end

    assert_redirected_to dram_path(assigns(:dram))
  end

  test "should show dram" do
    get :show, id: @dram
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dram
    assert_response :success
  end

  test "should update dram" do
    patch :update, id: @dram, dram: { cas_latency: @dram.cas_latency, ecc_support: @dram.ecc_support, maker: @dram.maker, model: @dram.model, notes: @dram.notes, price: @dram.price, series: @dram.series, size: @dram.size, speed: @dram.speed, timing: @dram.timing, type: @dram.type, voltage: @dram.voltage }
    assert_redirected_to dram_path(assigns(:dram))
  end

  test "should destroy dram" do
    assert_difference('Dram.count', -1) do
      delete :destroy, id: @dram
    end

    assert_redirected_to drams_path
  end
end
