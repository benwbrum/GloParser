json.array!(@tx_land_grants_special_collections) do |tx_land_grants_special_collection|
  json.extract! tx_land_grants_special_collection, :id, :control, :glo_id, :district, :county, :page, :abstract, :abstract2, :orig_grantee, :certificate, :patentee, :patent_date, :patent_no, :patent_vol, :part_section, :survey_blk_tsp, :acres, :adj_county, :adj_acres, :class, :file_no, :comment, :page, :class_prefix, :class_suffix, :internal_comment, :external_comment, :collection_type, :title_date, :web_display, :doc_adoptable, :acquittance_date, :acquitttance_no, :acquittance_vol, :acquittance_acres, :pdf_exists, :pdf_size_bytes, :pdf_dir_date, :aka
  json.url tx_land_grants_special_collection_url(tx_land_grants_special_collection, format: :json)
end
