require 'test_helper'

class CpusControllerTest < ActionController::TestCase
  setup do
    @cpu = cpus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpu" do
    assert_difference('Cpu.count') do
      post :create, cpu: { cooling_device: @cpu.cooling_device, cores: @cpu.cores, graphics_base_frequency: @cpu.graphics_base_frequency, graphics_max_frequency: @cpu.graphics_max_frequency, integrated_graphics: @cpu.integrated_graphics, l2_cache: @cpu.l2_cache, l3_cache: @cpu.l3_cache, max_frequency: @cpu.max_frequency, max_pcie_lanes: @cpu.max_pcie_lanes, model: @cpu.model, name: @cpu.name, operating_frequency: @cpu.operating_frequency, pcie_rev: @cpu.pcie_rev, socket: @cpu.socket, supports_64bits: @cpu.supports_64bits, supports_hyper_threading: @cpu.supports_hyper_threading, supports_virtualization: @cpu.supports_virtualization, tech_node: @cpu.tech_node, threads: @cpu.threads }
    end

    assert_redirected_to cpu_path(assigns(:cpu))
  end

  test "should show cpu" do
    get :show, id: @cpu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpu
    assert_response :success
  end

  test "should update cpu" do
    patch :update, id: @cpu, cpu: { cooling_device: @cpu.cooling_device, cores: @cpu.cores, graphics_base_frequency: @cpu.graphics_base_frequency, graphics_max_frequency: @cpu.graphics_max_frequency, integrated_graphics: @cpu.integrated_graphics, l2_cache: @cpu.l2_cache, l3_cache: @cpu.l3_cache, max_frequency: @cpu.max_frequency, max_pcie_lanes: @cpu.max_pcie_lanes, model: @cpu.model, name: @cpu.name, operating_frequency: @cpu.operating_frequency, pcie_rev: @cpu.pcie_rev, socket: @cpu.socket, supports_64bits: @cpu.supports_64bits, supports_hyper_threading: @cpu.supports_hyper_threading, supports_virtualization: @cpu.supports_virtualization, tech_node: @cpu.tech_node, threads: @cpu.threads }
    assert_redirected_to cpu_path(assigns(:cpu))
  end

  test "should destroy cpu" do
    assert_difference('Cpu.count', -1) do
      delete :destroy, id: @cpu
    end

    assert_redirected_to cpus_path
  end
end
