json.array!(@gpus) do |gpu|
  json.extract! gpu, :id, :select, :price, :name, :maker, :model, :interface, :gpu_ver, :core_clock, :boost_clock, :cuda_cores, :mem_clock, :memory_size, :mem_interface, :mem_type, :directx_support, :opengl_support, :hdmi_ports, :dvi_i_ports, :dvi_d_ports, :max_resolution, :sli_support, :cooler, :system_reqs
  json.url gpu_url(gpu, format: :json)
end
