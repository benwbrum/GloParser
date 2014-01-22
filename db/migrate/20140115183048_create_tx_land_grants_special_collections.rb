class CreateTxLandGrantsSpecialCollections < ActiveRecord::Migration

  def change
    create_table :tx_land_grants_special_collections do |t|
      t.integer :control
      t.integer :glo_id
      t.string :district
      t.string :county
      t.string :page
      t.integer :abstract
      t.string :abstract2
      t.string :orig_grantee
      t.string :certificate
      t.string :patentee
      t.string :patent_date
      t.string :patent_no
      t.string :patent_vol
      t.string :part_section
      t.string :survey_blk_tsp
      t.text :acres
      t.string :adj_county
      t.string :adj_acres
      t.string :glo_class
      t.string :file_no
      t.text :comment
      t.integer :page
      t.string :class_prefix
      t.string :class_suffix
      t.string :internal_comment
      t.string :external_comment
      t.string :collection_type
      t.string :title_date
      t.string :web_display
      t.string :doc_adoptable
      t.string :acquittance_date
      t.string :acquittance_no
      t.string :acquittance_vol
      t.decimal :acquittance_acres
      t.string :pdf_exists
      t.integer :pdf_size_bytes
      t.date :pdf_dir_date
      t.string :aka

      t.timestamps
    end
  end
end
