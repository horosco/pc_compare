json.array!(@ssds) do |ssd|
  json.extract! ssd, :id, :price, :name, :model, :form_factor, :size, :connection
  json.url ssd_url(ssd, format: :json)
end
