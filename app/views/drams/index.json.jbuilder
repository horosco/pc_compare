json.array!(@drams) do |dram|
  json.extract! dram, :id, :price, :maker, :series, :model, :size, :type, :speed, :cas_latency, :timing, :voltage, :ecc_support, :notes
  json.url dram_url(dram, format: :json)
end
