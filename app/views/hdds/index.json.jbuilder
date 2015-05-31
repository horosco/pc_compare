json.array!(@hdds) do |hdd|
  json.extract! hdd, :id, :price, :maker, :series, :model, :interface, :notes
  json.url hdd_url(hdd, format: :json)
end
