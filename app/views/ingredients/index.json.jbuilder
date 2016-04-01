json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :quantity, :unit
  json.url ingredient_url(ingredient, format: :json)
end
