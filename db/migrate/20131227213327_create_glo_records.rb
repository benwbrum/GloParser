class CreateGloRecords < ActiveRecord::Migration
  def change
    create_table :glo_records do |t|
      t.integer :glo_id
      t.string :abstract_url
      t.string :collection_name
      t.string :file_url
      t.string :file_number
      t.string :grantee
      t.string :patentee
      t.string :pdf_url
      t.string :remarks
      t.references :glo_collection, index: true

      t.timestamps
    end
  end
end
