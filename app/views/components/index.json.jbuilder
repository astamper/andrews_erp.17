json.array!(@components) do |component|
  json.extract! component, :id, :quantity, :unit
  json.url component_url(component, format: :json)
end
