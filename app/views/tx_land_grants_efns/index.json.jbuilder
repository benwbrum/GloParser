json.array!(@tx_land_grants_efns) do |tx_land_grants_efn|
  json.extract! tx_land_grants_efn, :id, :field_note, :control, :pdf_Exists, :file_no, :type
  json.url tx_land_grants_efn_url(tx_land_grants_efn, format: :json)
end
