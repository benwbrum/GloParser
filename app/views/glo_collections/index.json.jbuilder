json.array!(@glo_collections) do |glo_collection|
  json.extract! glo_collection, :id, :name
  json.url glo_collection_url(glo_collection, format: :json)
end
