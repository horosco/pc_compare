require 'test_helper'

class GpusControllerTest < ActionController::TestCase
  setup do
    @gpu = gpus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gpus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gpu" do
    assert_difference('Gpu.count') do
      post :create, gpu: { boost_clock: @gpu.boost_clock, cooler: @gpu.cooler, core_clock: @gpu.core_clock, cuda_cores: @gpu.cuda_cores, directx_support: @gpu.directx_support, dvi_d_ports: @gpu.dvi_d_ports, dvi_i_ports: @gpu.dvi_i_ports, gpu_ver: @gpu.gpu_ver, hdmi_ports: @gpu.hdmi_ports, interface: @gpu.interface, maker: @gpu.maker, max_resolution: @gpu.max_resolution, mem_clock: @gpu.mem_clock, mem_interface: @gpu.mem_interface, mem_type: @gpu.mem_type, memory_size: @gpu.memory_size, model: @gpu.model, name: @gpu.name, opengl_support: @gpu.opengl_support, price: @gpu.price, sli_support: @gpu.sli_support, system_reqs: @gpu.system_reqs }
    end

    assert_redirected_to gpu_path(assigns(:gpu))
  end

  test "should show gpu" do
    get :show, id: @gpu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gpu
    assert_response :success
  end

  test "should update gpu" do
    patch :update, id: @gpu, gpu: { boost_clock: @gpu.boost_clock, cooler: @gpu.cooler, core_clock: @gpu.core_clock, cuda_cores: @gpu.cuda_cores, directx_support: @gpu.directx_support, dvi_d_ports: @gpu.dvi_d_ports, dvi_i_ports: @gpu.dvi_i_ports, gpu_ver: @gpu.gpu_ver, hdmi_ports: @gpu.hdmi_ports, interface: @gpu.interface, maker: @gpu.maker, max_resolution: @gpu.max_resolution, mem_clock: @gpu.mem_clock, mem_interface: @gpu.mem_interface, mem_type: @gpu.mem_type, memory_size: @gpu.memory_size, model: @gpu.model, name: @gpu.name, opengl_support: @gpu.opengl_support, price: @gpu.price, sli_support: @gpu.sli_support, system_reqs: @gpu.system_reqs }
    assert_redirected_to gpu_path(assigns(:gpu))
  end

  test "should destroy gpu" do
    assert_difference('Gpu.count', -1) do
      delete :destroy, id: @gpu
    end

    assert_redirected_to gpus_path
  end
end
