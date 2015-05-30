require 'test_helper'

class SsdsControllerTest < ActionController::TestCase
  setup do
    @ssd = ssds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ssds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ssd" do
    assert_difference('Ssd.count') do
      post :create, ssd: { connection: @ssd.connection, form_factor: @ssd.form_factor, model: @ssd.model, name: @ssd.name, price: @ssd.price, size: @ssd.size }
    end

    assert_redirected_to ssd_path(assigns(:ssd))
  end

  test "should show ssd" do
    get :show, id: @ssd
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ssd
    assert_response :success
  end

  test "should update ssd" do
    patch :update, id: @ssd, ssd: { connection: @ssd.connection, form_factor: @ssd.form_factor, model: @ssd.model, name: @ssd.name, price: @ssd.price, size: @ssd.size }
    assert_redirected_to ssd_path(assigns(:ssd))
  end

  test "should destroy ssd" do
    assert_difference('Ssd.count', -1) do
      delete :destroy, id: @ssd
    end

    assert_redirected_to ssds_path
  end
end
