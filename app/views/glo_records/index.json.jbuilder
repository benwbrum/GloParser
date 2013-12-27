json.array!(@glo_records) do |glo_record|
  json.extract! glo_record, :id, :glo_id, :abstract_url, :collection_name, :file_url, :file_number, :grantee, :patentee, :pdf_url, :remarks, :glo_collection_id
  json.url glo_record_url(glo_record, format: :json)
end
