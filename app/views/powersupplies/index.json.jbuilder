json.array!(@powersupplies) do |powersupply|
  json.extract! powersupply, :id, :price, :maker, :model, :ps_type, :max_power, :connector, :rails_12v, :intel_support, :sli_support, :output_ratings, :dimensions, :notes
  json.url powersupply_url(powersupply, format: :json)
end
