json.array!(@cpus) do |cpu|
  json.extract! cpu, :id, :name, :model, :socket, :cores, :threads, :operating_frequency, :max_frequency, :l2_cache, :l3_cache, :tech_node, :supports_64bits, :supports_hyper_threading, :supports_virtualization, :integrated_graphics, :graphics_base_frequency, :graphics_max_frequency, :pcie_rev, :max_pcie_lanes, :cooling_device
  json.url cpu_url(cpu, format: :json)
end
