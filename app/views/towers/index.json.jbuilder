json.array!(@towers) do |tower|
  json.extract! tower, :id, :price, :maker, :model, :mb_compatibility, :front_ports
  json.url tower_url(tower, format: :json)
end
